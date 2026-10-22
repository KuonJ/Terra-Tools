const nativeApp = () => Boolean(window.pywebview) || new URLSearchParams(window.location.search).has('native');

// Hydrate before mounting React. Mac preferences survive random localhost ports
// and WebKit private sessions; the browser version keeps using localStorage.
export async function initializePreferences() {
  if (!nativeApp()) return;
  if (!window.pywebview?.api?.get_preferences) {
    await new Promise(resolve => {
      const ready = () => { clearTimeout(timer); window.removeEventListener('pywebviewready', ready); resolve(); };
      const timer = setTimeout(ready, 5000);
      window.addEventListener('pywebviewready', ready);
    });
  }
  if (!window.pywebview?.api?.get_preferences) return;
  try {
    const values = await window.pywebview.api.get_preferences();
    for (const [key, value] of Object.entries(values || {})) {
      if (typeof value === 'string' && (key.startsWith('terratools.') || key.startsWith('tb_storybook_'))) {
        window.localStorage.setItem(key, value);
      }
    }
  } catch (error) {
    console.warn('Could not restore Mac preferences:', error);
  }
}

export function persistPreference(key, value) {
  try { window.localStorage.setItem(key, value); } catch { /* Storage unavailable. */ }
  if (nativeApp() && window.pywebview?.api?.set_preference) {
    window.pywebview.api.set_preference(key, value)
      .catch(error => console.warn('Could not save Mac preference:', error));
  }
}
