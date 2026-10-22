import unittest
from backend.job_levels import exp_at_level, pack_job_level
from backend.save_audit import repair_save_experience


class SaveAuditTests(unittest.TestCase):
    def test_plain_and_overshot_levels_repaired_legal_exp_preserved(self):
        valid = (216551 + 12) * 4096 + 35
        source = {'active_account_id': 'u', 'accounts': {'u': {'userdata': {'chrdata': [
            {'id': 1, 'jobLevels': [valid, 35, 9000000 * 4096 + 90]}
        ]}}}}
        result, repairs, issues = repair_save_experience(source)
        levels = result['accounts']['u']['userdata']['chrdata'][0]['jobLevels']
        self.assertEqual(levels[0], valid)
        self.assertEqual(levels[1], pack_job_level(1, 1, 35))
        self.assertEqual(levels[2], pack_job_level(1, 2, 90))
        self.assertEqual(len(repairs), 2)
        self.assertFalse(issues)
        self.assertEqual(source['accounts']['u']['userdata']['chrdata'][0]['jobLevels'][1], 35)
        self.assertFalse(repair_save_experience(result)[1])

    def test_lv90_is_not_zero_total_exp_and_91_is_only_the_ceiling(self):
        self.assertEqual(exp_at_level(1, 0, 90), 1633707)
        self.assertEqual(exp_at_level(1, 0, 91) - 1, 1672492)
