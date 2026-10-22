import master from '../../../backend/job_curves.json' with { type: 'json' };
import backend from '../../../backend/retb_save_profile.json' with { type: 'json' };

// Arithmetic is intentional: JS bitwise operators truncate to signed 32 bits.
export const decodeJobLevel = packed => Math.trunc(Number(packed) || 0) % 4096;
export const decodeJobExp = packed => Math.floor(Number(packed) / 4096);
export const characterLuckCap = chrId => backend.luck_caps[chrId] ?? 1000;
export const BACKEND_LIMITS = backend.constants;
export const buddyLevelCap = bid => backend.buddy_curves[bid]?.[0];

export function jobExpCeiling(chrId, slot, level) {
  const next = expAtLevel(chrId, slot, level + 1);
  const jobId = backend.job_ids[chrId]?.[slot];
  return level === 90 ? Math.min(next, backend.job_exp_caps[jobId] ?? next) : next;
}

export function editBuddyLevel(entry, level) {
  const curve = backend.buddy_curves[entry.bid];
  if (!curve) throw new Error(`Unknown reTB companion ${entry.bid}.`);
  const lv = Math.max(1, Math.min(curve[0], Math.floor(Number(level))));
  if (!Number.isFinite(lv)) throw new Error('Invalid companion level.');
  const f = Math.fround;
  const at = n => curve[0] <= 1 ? 0 : Math.trunc(f(f(curve[1]) * f(f((n - 1) / 98) ** f(curve[2]))));
  const exp = Number(entry.exp);
  const valid = Number.isSafeInteger(exp) && exp >= at(lv) && (lv === curve[0] || exp < at(lv + 1));
  return { ...entry, lv, exp: valid ? exp : at(lv) };
}

export function expAtLevel(chrId, slot, level) {
  const curve = master.characters[chrId]?.[slot];
  if (!curve) throw new Error(`Missing EXP curve for character ${chrId}, job ${slot + 1}.`);
  // ChrJobParams.GetEXPAt (ARM64 0x10C407C): float division, powf,
  // float multiplication, then truncate. Double arithmetic differs at boundaries.
  const f = Math.fround;
  return Math.trunc(f(f(curve[0]) * f(f((level - 1) / 98) ** f(curve[1]))));
}

export function packJobLevel(chrId, slot, level) {
  const lv = Math.max(1, Math.min(90, Math.trunc(Number(level))));
  if (!Number.isFinite(lv)) throw new Error('Invalid job level.');
  const exp = expAtLevel(chrId, slot, lv);
  const packed = exp * 4096 + lv;
  if (!Number.isSafeInteger(packed)) throw new Error('Job EXP exceeds safe integer range.');
  return packed;
}

export function editJobLevel(chrId, slot, packed, lock, level) {
  if (lock === 0) return 0;
  if (level !== undefined && level !== null) {
    const lv = Math.max(1, Math.min(90, Math.trunc(Number(level))));
    const exp = decodeJobExp(packed);
    return exp >= expAtLevel(chrId, slot, lv) && exp < jobExpCeiling(chrId, slot, lv)
      ? exp * 4096 + lv : packJobLevel(chrId, slot, lv);
  }
  return lock === 1 && decodeJobLevel(packed) === 0 ? 1 : packed;
}

export function normalizeJobLevel(chrId, slot, packed) {
  if (!Number.isSafeInteger(packed) || packed < 0) throw new Error('Invalid packed job value.');
  if (packed === 0) return 0;
  const level = decodeJobLevel(packed);
  if (level < 1 || level > 90) throw new Error(`Invalid job level ${level}.`);
  const exp = decodeJobExp(packed);
  return exp >= expAtLevel(chrId, slot, level) && exp < jobExpCeiling(chrId, slot, level)
    ? packed : packJobLevel(chrId, slot, level);
}
