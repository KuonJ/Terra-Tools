import { useState, useEffect } from 'react';
import { persistPreference } from '../utils/preferences';

const PREFIX = 'terratools.';

/**
 * useState synced to localStorage under the "terratools." namespace.
 * The initial value is read synchronously so the first render — and the first
 * data fetch driven by it — already uses the persisted value. Storage failures
 * (private mode, quota) degrade gracefully to plain in-memory state.
 */
export function usePersistentState(key, defaultValue, validate = () => true) {
  const storageKey = PREFIX + key;

  const [value, setValue] = useState(() => {
    try {
      const raw = window.localStorage.getItem(storageKey);
      if (raw !== null) {
        const saved = JSON.parse(raw);
        if (validate(saved)) return saved;
      }
    } catch {
      // corrupted entry or storage unavailable: fall back to the default
    }
    return defaultValue;
  });

  useEffect(() => {
    try {
      persistPreference(storageKey, JSON.stringify(value));
    } catch {
      // storage full or blocked: keep the value in memory only
    }
  }, [storageKey, value]);

  return [value, setValue];
}
