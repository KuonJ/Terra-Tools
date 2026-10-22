import tempfile
import unittest
from pathlib import Path
from unittest.mock import Mock

from backend.native_preferences import NativePreferences
from backend.native_save import NativeSaveAPI


class NativePreferenceTests(unittest.TestCase):
    def test_preferences_and_directory_survive_restart_and_port_change(self):
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / 'Application Support' / 'TerraTools' / 'preferences.json'
            api = NativeSaveAPI('http://127.0.0.1:1234', NativePreferences(path))
            api.window = Mock()
            api.window.get_current_url.return_value = 'http://127.0.0.1:1234/?native=1'
            api.set_preference('terratools.language', '"zh_tw"')
            api.set_preference('terratools.audio.volume', '0.3')
            api._preferences.set_directory(temporary)
            restarted = NativeSaveAPI('http://127.0.0.1:5678', NativePreferences(path))
            restarted.window = Mock()
            restarted.window.get_current_url.return_value = 'http://127.0.0.1:5678/'
            self.assertEqual(restarted.get_preferences()['terratools.language'], '"zh_tw"')
            self.assertEqual(restarted.get_preferences()['terratools.audio.volume'], '0.3')
            self.assertEqual(restarted._directory, temporary)
            self.assertEqual(list(path.parent.iterdir()), [path])

    def test_invalid_keys_and_foreign_page_are_rejected(self):
        api = NativeSaveAPI('http://127.0.0.1:1234')
        api.window = Mock()
        api.window.get_current_url.return_value = 'http://127.0.0.1:1234/'
        with self.assertRaises(ValueError):
            api.set_preference('game_save', 'private data')
        api.window.get_current_url.return_value = 'https://example.org/'
        with self.assertRaises(ValueError):
            api.get_preferences()

    def test_corrupt_preferences_fall_back_without_touching_other_files(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'preferences.json'
            path.write_text('{invalid')
            prefs = NativePreferences(path)
            self.assertEqual(prefs.storage(), {})
            prefs.set_value('terratools.language', '"ja"')
            self.assertEqual(NativePreferences(path).storage()['terratools.language'], '"ja"')
