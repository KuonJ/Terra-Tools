import json
import tempfile
import unittest
from pathlib import Path
from unittest.mock import Mock, patch

from backend.native_save import NativeSaveAPI, write_save


class NativeSaveTests(unittest.TestCase):
    def test_open_uses_dialog_and_reads_utf8_bom_without_changing_file(self):
        api = NativeSaveAPI('http://127.0.0.1:1234')
        api.window = Mock()
        api.window.get_current_url.return_value = 'http://127.0.0.1:1234/?native=1'
        with tempfile.TemporaryDirectory() as directory, patch.dict('sys.modules', {'webview': Mock()}):
            path = Path(directory) / '中文存档.json'
            content = '{"accounts":{"中文":{}}}'
            path.write_text(content, encoding='utf-8-sig')
            original = path.read_bytes()
            api.window.create_file_dialog.return_value = (str(path),)
            result = api.open_file()
            self.assertEqual(result['content'], content)
            self.assertEqual(result['name'], path.name)
            self.assertEqual(result['size'], len(original))
            self.assertEqual(path.read_bytes(), original)
            self.assertEqual(api._directory, directory)

    def test_open_cancel_invalid_json_and_foreign_page(self):
        api = NativeSaveAPI('http://127.0.0.1:1234')
        api.window = Mock()
        api.window.get_current_url.return_value = 'http://127.0.0.1:1234/'
        with tempfile.TemporaryDirectory() as directory, patch.dict('sys.modules', {'webview': Mock()}):
            api.window.create_file_dialog.return_value = None
            self.assertEqual(api.open_file(), {'cancelled': True})
            path = Path(directory) / 'bad.json'
            path.write_text('{broken')
            api.window.create_file_dialog.return_value = str(path)
            self.assertIn('error', api.open_file())
            api.window.get_current_url.return_value = 'https://example.org/'
            api.window.create_file_dialog.reset_mock()
            self.assertIn('error', api.open_file())
            api.window.create_file_dialog.assert_not_called()

    def test_bridge_writes_the_selected_path_and_reports_io_failure(self):
        api = NativeSaveAPI('http://127.0.0.1:1234')
        api.window = Mock()
        api.window.get_current_url.return_value = 'http://127.0.0.1:1234/?native=1'
        with tempfile.TemporaryDirectory() as directory, patch.dict('sys.modules', {'webview': Mock()}):
            path = Path(directory) / 'save.json'
            api.window.create_file_dialog.return_value = (str(path),)
            result = api.save_file('save.json', '{"accounts":{}}')
            self.assertEqual(result, {'cancelled': False, 'path': str(path)})
            self.assertEqual(path.read_text(), '{"accounts":{}}')
            api.window.create_file_dialog.return_value = (str(Path(directory) / 'missing' / 'save.json'),)
            self.assertIn('error', api.save_file('save.json', '{"accounts":{}}'))

    def test_exact_utf8_doubles_and_escaped_mail(self):
        content = '{"accounts":{"中文":{"userdata":{"jobLevels":[1.0,0.0],"mail":"a\\nb"}}}}'
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / '手机存档.json'
            write_save(path, content)
            self.assertEqual(path.read_bytes(), content.encode())
            self.assertEqual(json.loads(path.read_text())['accounts']['中文']['userdata']['mail'], 'a\nb')

    def test_bad_nested_json_does_not_overwrite_existing_file(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'save.json'
            path.write_text('original')
            content = json.dumps({'format': 'retb-save/1', 'tables': {'session': {
                'rows': [['u', '{"mail":"a\nb"}']]}}})
            with self.assertRaises(ValueError):
                write_save(path, content)
            self.assertEqual(path.read_text(), 'original')
            self.assertEqual(list(Path(directory).iterdir()), [path])

    def test_dialog_cancel_and_foreign_page(self):
        api = NativeSaveAPI('http://127.0.0.1:1234')
        api.window = Mock()
        api.window.get_current_url.return_value = 'http://127.0.0.1:1234/?native=1#/saves'
        api.window.create_file_dialog.return_value = None
        with patch.dict('sys.modules', {'webview': Mock()}):
            self.assertEqual(api.save_file('save.json', '{"accounts":{}}'), {'cancelled': True})
        api.window.create_file_dialog.reset_mock()
        api.window.get_current_url.return_value = 'https://example.org/'
        self.assertIn('error', api.save_file('save.json', '{"accounts":{}}'))
        api.window.create_file_dialog.assert_not_called()
