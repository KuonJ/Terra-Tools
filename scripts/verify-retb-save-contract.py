"""Verify editor rules against actual reTB models, handlers and a temporary SQLite DB."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--retb-root', type=Path, default=root.parent / 'reTB')
parser.add_argument('--sample', type=Path, default=root.parent / 'test/retb-save.json')
args = parser.parse_args()
sys.path[:0] = [str(root), str(args.retb_root.resolve())]

with tempfile.TemporaryDirectory() as temporary:
    os.environ['RETB_DB_PATH'] = str(Path(temporary) / 'retb.db')
    from tb_server.models.game_data import load_game_data
    from tb_server.models.server_constants import ServerConstants
    from tb_server.modules.sqlite_store import JsonStore
    from tb_server.handlers.userdata import session_context
    from tb_server.handlers.userdata.state_models import SessionState
    from tb_server.handlers.userdata.state_economy import spend_energy
    from tb_server.handlers.userdata.buddy_helpers import buddy_exp_at, buddy_level_for_exp
    from tb_server.handlers.userdata.gacha_helpers import luck_cap_for
    from backend.job_levels import PROFILE
    from backend.save_audit import repair_save_experience

    game = load_game_data()
    constants = ServerConstants().model_dump()
    for name, value in PROFILE['constants'].items():
        assert value == constants[name], name
    for cid, cap in PROFILE['luck_caps'].items():
        assert cap == luck_cap_for(int(cid)), cid
    for jid, cap in PROFILE['job_exp_caps'].items():
        assert cap == game.joblevel_exp_caps.cap_for(int(jid)), jid

    # Evaluate the actual JS helpers, not a Python reimplementation of them.
    code = '''
      const {default: p} = await import(process.argv[1], {with:{type:'json'}});
      const h = await import(process.argv[2]);
      const values = {};
      for (const [bid, curve] of Object.entries(p.buddy_curves)) {
        values[bid] = Array.from({length: curve[0]}, (_, i) =>
          h.editBuddyLevel({bid:Number(bid), exp:-1}, i + 1).exp);
      }
      process.stdout.write(JSON.stringify(values));
    '''
    vectors = json.loads(subprocess.check_output([
        'node', '--input-type=module', '-e', code,
        (root / 'backend/retb_save_profile.json').as_uri(),
        (root / 'frontend/src/utils/jobLevels.js').as_uri(),
    ], text=True))
    points = 0
    for record in game.buddy_db.records:
        for level, experience in enumerate(vectors[str(record.buddy_id)], 1):
            assert experience == buddy_exp_at(record, level), (record.buddy_id, level)
            assert buddy_level_for_exp(record, experience) == level
            points += 1

    original = json.loads(args.sample.read_text())
    _, repairs, issues = repair_save_experience(original)
    draft = Path(temporary) / 'edited.json'
    code = '''
      import fs from 'node:fs';
      const h = await import(process.argv[1]);
      const source = JSON.parse(fs.readFileSync(process.argv[2], 'utf8'));
      const edited = h.applySaveEdits(source, {
        username:'Audit', coins:0, energy:9999, freeEnergy:0,
        characters:{1:{jobLevels:{0:90}, sb:1000, luck:700}},
        items:{181:9999999}, buddyAdds:[{bid:1,lv:20}]
      });
      fs.writeFileSync(process.argv[3], JSON.stringify(h.convertSaveData(edited,'retb').data));
    '''
    subprocess.run(['node', '--input-type=module', '-e', code,
                    (root / 'frontend/src/utils/saveConverter.js').as_uri(),
                    str(args.sample.resolve()), str(draft)], check=True)
    edited = json.loads(draft.read_text())
    doc = json.loads(edited['tables']['session']['rows'][0][1])
    state = SessionState.model_validate(doc)
    assert state.valuables.energy == 9999 and state.valuables.freeEnergy == 0
    assert state.itemList[180] == constants['maxItemCount']
    added = state.buddyInfo[-1]
    assert added.exp == buddy_exp_at(game.buddy_db.get(added.bid), 20)
    store = JsonStore(Path(temporary) / 'session.db', 'session')
    store.put('audit', state.model_dump(by_alias=True))
    loaded = SessionState.model_validate(store.get('audit'))
    session_context.default_session = loaded
    spend_energy(1)
    assert loaded.valuables.energy == 9998 and loaded.valuables.freeEnergy == 0
    store.put('audit', loaded.model_dump(by_alias=True))
    assert store.get('audit')['valuables']['energy'] == 9998
    print(json.dumps({
        'backend_commit': PROFILE['source_commit'], 'constants': PROFILE['constants'],
        'luck_caps_checked': len(PROFILE['luck_caps']),
        'companions_checked': len(vectors), 'companion_curve_points_checked': points,
        'sample_exp_repairs': len(repairs), 'sample_unknown_curves': len(issues),
        'edited_save_backend_model': 'passed', 'sqlite_roundtrip_and_energy_spend': '9999 -> 9998',
        'animata_core_item_id': 181,
    }, ensure_ascii=False, indent=2))
