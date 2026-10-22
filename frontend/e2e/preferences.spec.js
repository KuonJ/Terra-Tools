import {test, expect} from '@playwright/test';

test('browser remembers language after reload', async ({page}) => {
  await page.goto('/#/dashboard');
  const language = page.locator('.lang-selector select');
  await language.selectOption('zh_tw');
  await page.reload();
  await expect(language).toHaveValue('zh_tw');
});

test('native preferences restore before render across origins, preserving language and existing filters', async ({page, context, baseURL}) => {
  const saved = {'terratools.language':'"zh_tw"', 'terratools.audio.volume':'0.3'};
  await context.exposeBinding('nativeGetPreferences', () => ({...saved}));
  await context.exposeBinding('nativeSetPreference', (_, key, value) => {saved[key] = value; return {saved:true};});
  await context.addInitScript(() => {
    window.pywebview = {api:{
      get_preferences: () => window.nativeGetPreferences(),
      set_preference: (key, value) => window.nativeSetPreference(key, value)
    }};
  });
  await page.goto('/?native=1#/dashboard');
  await expect(page.locator('.lang-selector select')).toHaveValue('zh_tw');
  await expect.poll(() => page.locator('audio').evaluate(a => a.volume)).toBe(0.3);
  await expect(page.locator('audio')).toHaveJSProperty('paused', true);
  await page.locator('.lang-selector select').selectOption('ja');
  const database = page.getByRole('button', {name:/Database/});
  await database.click();
  await expect.poll(() => saved['terratools.language']).toBe('"ja"');
  await expect.poll(() => saved['terratools.sidebar.databaseOpen']).toBe('false');
  const other = new URL(baseURL);
  other.hostname = other.hostname === 'localhost' ? '127.0.0.1' : 'localhost';
  await page.goto(other.origin + '/?native=1#/dashboard');
  await expect(page.locator('.lang-selector select')).toHaveValue('ja');
  await expect(database).toHaveAttribute('aria-expanded', 'false');
  await expect.poll(() => page.locator('audio').evaluate(a => a.volume)).toBe(0.3);
});
