"""Native-dialog save bridge. No HTTP endpoint accepts arbitrary disk paths."""
import json
import os
import tempfile
from pathlib import Path
from backend.native_preferences import NativePreferences


def _reject_constant(value):
    raise ValueError(f'Invalid JSON constant: {value}')


def validate_save_text(content):
    data = json.loads(content, parse_constant=_reject_constant)
    if not isinstance(data, dict):
        raise ValueError('Save must be a JSON object.')
    if data.get('format') == 'retb-save/1' or 'session' in data.get('tables', {}):
        table = data['tables']['session']
        index = table['cols'].index('data') if 'data' in table.get('cols', []) else 1
        for row in table.get('rows', []):
            if isinstance(row[index], str):
                json.loads(row[index], parse_constant=_reject_constant)
    elif 'accounts' not in data:
        raise ValueError('Unrecognized save format.')


def write_save(path, content):
    """Preserve exact decimal spellings and escaped newlines, replace atomically."""
    validate_save_text(content)
    path = Path(path)
    temporary = None
    try:
        with tempfile.NamedTemporaryFile(dir=path.parent, delete=False) as stream:
            temporary = stream.name
            stream.write(content.encode('utf-8'))
            stream.flush()
            os.fsync(stream.fileno())
        os.replace(temporary, path)
    finally:
        if temporary and os.path.exists(temporary):
            os.unlink(temporary)


class NativeSaveAPI:
    def __init__(self, base_url, preferences=None):
        self.base_url = base_url
        self.window = None
        self._preferences = preferences or NativePreferences()
        self._directory = self._preferences.directory()

    def _require_app(self):
        if self.window.get_current_url().split('?')[0].split('#')[0] != self.base_url + '/':
            raise ValueError('File dialogs are restricted to this application.')

    def get_preferences(self):
        self._require_app()
        return self._preferences.storage()

    def set_preference(self, key, value):
        self._require_app()
        self._preferences.set_value(key, value)
        return {'saved': True}

    def open_file(self):
        try:
            self._require_app()
            import webview
            paths = self.window.create_file_dialog(
                webview.FileDialog.OPEN, directory=self._directory,
                allow_multiple=False, file_types=('JSON save (*.json)',),
            )
            if not paths:
                return {'cancelled': True}
            path = Path(paths if isinstance(paths, str) else paths[0])
            content = path.read_text(encoding='utf-8-sig')
            validate_save_text(content)
            self._directory = str(path.parent)
            try:
                self._preferences.set_directory(self._directory)
            except OSError:
                pass  # Reading a save must not fail because preferences are unwritable.
            return {'cancelled': False, 'name': path.name,
                    'size': path.stat().st_size, 'content': content}
        except Exception as exc:
            return {'error': str(exc)}

    def save_file(self, filename, content):
        try:
            self._require_app()
            validate_save_text(content)
            import webview
            paths = self.window.create_file_dialog(
                webview.FileDialog.SAVE,
                directory=self._directory,
                save_filename=Path(filename).name,
                file_types=('JSON save (*.json)',),
            )
            if not paths:
                return {'cancelled': True}
            path = paths if isinstance(paths, str) else paths[0]
            write_save(path, content)
            self._directory = str(Path(path).parent)
            try:
                self._preferences.set_directory(self._directory)
            except OSError:
                pass  # The save itself already succeeded.
            return {'cancelled': False, 'path': str(path)}
        except Exception as exc:
            return {'error': str(exc)}
