"""Small, atomic Mac preferences store, independent of the app's HTTP port."""
import json
import os
from pathlib import Path
import tempfile
from threading import RLock


class NativePreferences:
    def __init__(self, path=None):
        self._path = Path(path) if path else None
        self._lock = RLock()
        self._data = {'storage': {}, 'last_directory': ''}
        if self._path and self._path.exists():
            try:
                data = json.loads(self._path.read_text(encoding='utf-8'))
                if isinstance(data, dict) and isinstance(data.get('storage'), dict):
                    self._data = data
            except (OSError, ValueError):
                pass

    @staticmethod
    def allowed_key(key):
        return isinstance(key, str) and len(key) <= 128 and (
            key.startswith('terratools.') or key in ('tb_storybook_chapter', 'tb_storybook_scene'))

    def storage(self):
        with self._lock:
            return {k: v for k, v in self._data['storage'].items()
                    if self.allowed_key(k) and isinstance(v, str)}

    def set_value(self, key, value):
        if not self.allowed_key(key) or not isinstance(value, str) or len(value.encode('utf-8')) > 2_000_000:
            raise ValueError('Invalid preference.')
        with self._lock:
            if self._data['storage'].get(key) != value:
                self._data['storage'][key] = value
                self._write()

    def directory(self):
        with self._lock:
            value = self._data.get('last_directory', '')
            return value if isinstance(value, str) else ''

    def set_directory(self, value):
        with self._lock:
            self._data['last_directory'] = str(value)
            self._write()

    def _write(self):
        if self._path is None:
            return
        self._path.parent.mkdir(parents=True, exist_ok=True)
        temporary = None
        try:
            with tempfile.NamedTemporaryFile(dir=self._path.parent, delete=False) as stream:
                temporary = stream.name
                stream.write(json.dumps(self._data, ensure_ascii=False).encode('utf-8'))
                stream.flush()
                os.fsync(stream.fileno())
            os.replace(temporary, self._path)
        finally:
            if temporary and os.path.exists(temporary):
                os.unlink(temporary)
