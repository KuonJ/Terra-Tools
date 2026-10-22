import test from 'node:test';
import assert from 'node:assert/strict';
import { applySaveEdits, inspectSaveData, convertSaveData, repairSaveExperience, ITEM_MAX_STACK } from './src/utils/saveConverter.js';
import { packJobLevel, decodeJobExp, decodeJobLevel, expAtLevel, normalizeJobLevel, editBuddyLevel, buddyLevelCap } from './src/utils/jobLevels.js';

const save = () => ({format: 'retb-save/1', userid: 'test', tables: {
  session: {cols: ['userid', 'data'], rows: [['test', JSON.stringify({
    valuables: {coins: 12, energy: 5867, freeEnergy: 0},
    chrdata: [{id: 1, jobID: 0, jobLevels: [1300000 * 4096 + 80, 0, 0]}],
    pending_messages: [{messages: {en: 'Gift\n中文'}}]
  })]]},
  user_valuables: {cols: ['userid', 'coins', 'max_free_energy', 'valuables_raw'],
    rows: [['test', 12, 999, '9000']]},
  characters: {rows: [['test', 1, 0, 0, 0, '[80,0,0]', 0]]}
}});
const session = data => JSON.parse(data.tables.session.rows[0][1]);

test('35 is packed with cumulative baseline EXP; level 1 and lock are distinct', () => {
  const result = applySaveEdits(save(), {characters: {1: {jobLevels: {0: 35}, jobs: {1: 1}}}});
  const levels = session(result).chrdata[0].jobLevels;
  assert.equal(levels[0], 216551 * 4096 + 35);
  assert.equal(decodeJobExp(levels[0]), 216551);
  assert.deepEqual(levels.slice(1), [1, 0]);
  assert.deepEqual(JSON.parse(result.tables.characters.rows[0][5]), [35, 1, 0]);
});

test('unmodified and same-level slots preserve EXP above 32 bits', () => {
  const original = save();
  for (const characters of [{1: {sb: 5}}, {1: {jobLevels: {0: 80}}}, {1: {jobs: {0: 1}}}]) {
    assert.equal(session(applySaveEdits(original, {characters})).chrdata[0].jobLevels[0], 5324800080);
  }
  assert.equal(packJobLevel(1, 0, 90), 1633707 * 4096 + 90);
});

test('both balances are editable, zero stays zero, caps and opaque strings survive', () => {
  const original = save();
  assert.equal(inspectSaveData(original).accounts[0].energy_free, 0);
  assert.equal(inspectSaveData(original).accounts[0].energy_paid, 5867);
  const result = applySaveEdits(original, {coins: 0, energy: 6000, freeEnergy: 0});
  assert.deepEqual(session(result).valuables, {coins: 0, energy: 6000, freeEnergy: 0});
  assert.deepEqual(result.tables.user_valuables.rows[0], ['test', 0, 999, '9000']);
  assert.equal(session(original).valuables.energy, 5867);
  assert.equal(session(result).pending_messages[0].messages.en, 'Gift\n中文');
});

test('two-way conversion preserves currencies and cap separately', () => {
  const liminal = convertSaveData(save(), 'liminal').data;
  const result = convertSaveData(liminal, 'retb').data;
  assert.deepEqual(session(result).valuables, {coins: 12, energy: 5867, freeEnergy: 0});
  assert.equal(result.tables.user_valuables.rows[0][4], 999);
  const ud = liminal.accounts[liminal.active_account_id].userdata;
  delete ud.valuables;
  const fromFlat = convertSaveData(liminal, 'retb').data;
  assert.equal(session(fromFlat).valuables.energy, 5867);
});

test('fallback roster re-encodes decoded database levels', () => {
  const original = save();
  const sd = session(original); sd.chrdata = [];
  original.tables.session.rows[0][1] = JSON.stringify(sd);
  const result = convertSaveData(original, 'liminal').data;
  assert.equal(result.accounts.test.userdata.chrdata[0].jobLevels[0], packJobLevel(1, 0, 80));
});

test('missing curves fail visibly; malformed embedded JSON is never silently ignored', () => {
  assert.throws(() => packJobLevel(999999, 0, 35), /Missing EXP curve/);
  const original = save(); original.tables.session.rows[0][1] = '{"mail":"bad\nnewline"}';
  assert.throws(() => applySaveEdits(original, {energy: 1}), /Invalid session JSON/);
  assert.equal(decodeJobLevel(packJobLevel(1, 0, 35)), 35);
});

test('only inconsistent EXP is reset to this level baseline, including plain levels and lv90 overshoot', () => {
  assert.equal(normalizeJobLevel(1, 0, 35), 216551 * 4096 + 35);
  const valid = (216551 + 12) * 4096 + 35;
  assert.equal(normalizeJobLevel(1, 0, valid), valid);
  assert.equal(normalizeJobLevel(1, 0, expAtLevel(1, 0, 36) * 4096 + 35), packJobLevel(1, 0, 35));
  assert.equal(normalizeJobLevel(1, 0, 9000000 * 4096 + 90), packJobLevel(1, 0, 90));
  assert.equal(normalizeJobLevel(1, 0, 0), 0);
  assert.equal(expAtLevel(1, 0, 90), 1633707);
  assert.equal(expAtLevel(1, 0, 91) - 1, 1672492);
});

test('same-format export audits source without edits or mutation and keeps 9999 energy', () => {
  const original = save();
  const sd = session(original);
  sd.chrdata[0].jobLevels = [90, 0, 0]; sd.valuables.energy = 9999;
  original.tables.session.rows[0][1] = JSON.stringify(sd);
  const result = convertSaveData(original, 'retb');
  assert.deepEqual(result.repairs, [{chr_id: 1, slot: 0, level: 90, before: 0, after: 1633707}]);
  assert.equal(session(result.data).valuables.energy, 9999);
  assert.equal(session(original).chrdata[0].jobLevels[0], 90);
  assert.equal(repairSaveExperience(result.data).repairs.length, 0);
});

test('resource edits use reTB item/SB/class Luck limits without clamping untouched balances', () => {
  const result = applySaveEdits(save(), {items: {1: 99999}, characters: {1: {sb: 10000, luck: 10000}}});
  const sd = session(result);
  assert.equal(ITEM_MAX_STACK, 9999999);
  assert.equal(sd.itemList[0], 99999);
  assert.equal(sd.chrdata[0].skillBoost, 1000);
  assert.equal(sd.chrdata[0].luck, 700);
});


test('companions follow reTB curves, per-species caps, and preserve legal max-level overflow', () => {
  const edited = editBuddyLevel({bid: 1, lv: 1, exp: 0}, 20);
  assert.equal(edited.lv, 20);
  assert.ok(edited.exp > 0);
  assert.deepEqual(editBuddyLevel(edited, 20), edited);
  assert.equal(editBuddyLevel({bid: 1, exp: 0}, 99).lv, 30);
  assert.equal(buddyLevelCap(1), 30);
  assert.equal(editBuddyLevel({bid: 1, lv: 30, exp: 9999999}, 30).exp, 9999999);
  const data = save();
  const result = applySaveEdits(data, {buddyAdds: [{bid: 1, lv: 20}], items: {181: 9999999}});
  assert.equal(session(result).buddyInfo[0].exp, edited.exp);
  assert.equal(session(result).itemList[180], 9999999);
});


test('removing an equipped companion clears the character link but retains species history', () => {
  const original = save(); const sd = session(original);
  sd.chrdata[0].buddy = 5;
  sd.buddyInfo = [{bid:1, iid:5, lv:20, exp:123, chrID:1}];
  sd._buddy_compendium = {'1':20};
  original.tables.session.rows[0][1] = JSON.stringify(sd);
  const result = session(applySaveEdits(original, {buddies:{5:{lv:0}}}));
  assert.equal(result.chrdata[0].buddy, 0);
  assert.equal(result.buddyInfo.length, 0);
  assert.equal(result._buddy_compendium['1'], 20);
});
