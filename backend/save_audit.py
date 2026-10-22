"""Non-destructive EXP normalization for both save formats."""
import copy
import json
from backend.job_levels import exp_at_level, exp_ceiling, pack_job_level


def repair_save_experience(data, account_id=None):
    result = copy.deepcopy(data)
    repairs, issues = [], []
    session_row = None
    session = None
    if 'session' in result.get('tables', {}):
        rows = result['tables']['session'].get('rows', [])
        if rows:
            session_row = rows[0]
            session = json.loads(session_row[1]) if isinstance(session_row[1], str) else session_row[1]
        roster = (session or {}).get('chrdata', [])
    else:
        accounts = result.get('accounts', {})
        aid = account_id or result.get('active_account_id') or next(iter(accounts), '')
        roster = accounts.get(aid, {}).get('userdata', {}).get('chrdata', [])
    for character in roster:
        for slot, packed in enumerate(character.get('jobLevels', [])):
            if packed == 0:
                continue
            if not isinstance(packed, (float, int)) or packed < 0 or int(packed) != packed:
                raise ValueError('Invalid packed job value.')
            level, experience = int(packed) % 4096, int(packed) // 4096
            if not 1 <= level <= 90:
                raise ValueError(f'Invalid job level {level}.')
            cid = character['id']
            try:
                low, high = exp_at_level(cid, slot, level), exp_ceiling(cid, slot, level)
            except (KeyError, IndexError):
                issues.append({'chr_id': cid, 'slot': slot, 'message': 'Missing EXP curve'})
                continue
            if not low <= experience < high:
                character['jobLevels'][slot] = float(pack_job_level(cid, slot, level))
                repairs.append({'chr_id': cid, 'slot': slot, 'level': level, 'before': experience, 'after': low})
    if session is not None:
        by_id = {c['id']: c for c in roster}
        for row in result['tables'].get('characters', {}).get('rows', []):
            if row[1] in by_id:
                row[5] = json.dumps([int(v) % 4096 for v in by_id[row[1]]['jobLevels']])
        table = result['tables'].get('user_valuables', {})
        if 'coins' in table.get('cols', []) and table.get('rows') and 'coins' in session.get('valuables', {}):
            table['rows'][0][table['cols'].index('coins')] = session['valuables']['coins']
        session_row[1] = json.dumps(session, ensure_ascii=False) if isinstance(session_row[1], str) else session
    return result, repairs, issues
