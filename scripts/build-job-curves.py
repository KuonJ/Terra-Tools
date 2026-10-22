"""Refresh the offline save editor's curves from the extracted 5.5.7 master."""
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
source = root / 'user-data/extracted-gamedata/game_data/ChrDatabase.json'
raw = source.read_bytes()
db = json.loads(raw)
jobs = {j['ID']: j for j in db['data']}
curves = {str(c['ID']): [
    [jobs[j]['EXPmax'], jobs[j]['EXPcoeff']] for j in c['Jobs'] if j in jobs
] for c in db['infos']}
target = root / 'backend/job_curves.json'
luck_caps = {str(c['ID']): 1000 if c.get('isLambda') or c.get('rarity') == 8
             else 800 if c.get('rarity') in (6, 7) else 700 for c in db['infos']}
target.write_text(json.dumps({'source_sha256': hashlib.sha256(raw).hexdigest(), 'luck_caps': luck_caps,
                             'characters': curves}, indent=2) + '\n')
