"""Character EXP curves shared with the offline browser converter."""
import json
import struct
from pathlib import Path

CURVES = json.loads(Path(__file__).with_name('job_curves.json').read_text())['characters']
PROFILE = json.loads(Path(__file__).with_name('retb_save_profile.json').read_text())


def _f32(value):
    return struct.unpack('f', struct.pack('f', value))[0]


def exp_at_level(chr_id, slot, level):
    exp_max, coefficient = CURVES[str(chr_id)][slot]
    return int(_f32(_f32(exp_max) * _f32(_f32((level - 1) / 98) ** _f32(coefficient))))


def exp_ceiling(chr_id, slot, level):
    next_level = exp_at_level(chr_id, slot, level + 1)
    jobs = PROFILE['job_ids'].get(str(chr_id), [])
    if level == 90 and slot < len(jobs):
        return min(next_level, PROFILE['job_exp_caps'].get(str(jobs[slot]), next_level))
    return next_level


def pack_job_level(chr_id, slot, level):
    level = max(1, min(90, int(level)))
    if level == 1:
        return 1
    experience = exp_at_level(chr_id, slot, level)
    return experience * 4096 + level
