"""Snapshot save-editor rules from the selected reTB backend, without opening its DB."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--retb-root', type=Path, default=root.parent / 'reTB')
args = parser.parse_args()
source = args.retb_root.resolve()
sys.path.insert(0, str(source))
from tb_server.models.game_data import load_game_data
from tb_server.models.server_constants import ServerConstants
from tb_server.handlers.userdata.gacha_helpers import luck_cap_for

game = load_game_data()
constants = ServerConstants().model_dump()
chr_jobs = json.loads((source / 'tb_server/data/chr_to_jobs.json').read_text())
chr_jobs = {k: v for k, v in chr_jobs.items() if not k.startswith('_')}
caps = json.loads((source / 'tb_server/data/joblevel_exp_caps.json').read_text())
profile = {
    'source_commit': subprocess.check_output(['git', '-C', str(source), 'rev-parse', 'HEAD'], text=True).strip(),
    'constants': {k: constants[k] for k in ('maxCoins', 'maxEnergy', 'maxFreeEnergy', 'maxItemCount', 'levelCap', 'BuddyBoxMax')},
    'luck_caps': {cid: luck_cap_for(int(cid)) for cid in chr_jobs},
    'job_ids': chr_jobs,
    'job_exp_caps': {k: v for k, v in caps.items() if not k.startswith('_')},
    'buddy_curves': {str(b.buddy_id): [b.max_level, b.exp_max, b.exp_coeff] for b in game.buddy_db.records},
    'source_sha256': {name: hashlib.sha256((source / name).read_bytes()).hexdigest() for name in (
        'tb_server/models/server_constants.py', 'tb_server/handlers/userdata/state_consts.py',
        'tb_server/handlers/userdata/gacha_helpers.py', 'tb_server/handlers/userdata/buddy_helpers.py',
        'tb_server/data/buddydb_full.json', 'tb_server/data/joblevel_exp_caps.json')},
}
(root / 'backend/retb_save_profile.json').write_text(json.dumps(profile, indent=2) + '\n')
print(f"Backend profile: {len(chr_jobs)} characters, {len(profile['buddy_curves'])} companions")
