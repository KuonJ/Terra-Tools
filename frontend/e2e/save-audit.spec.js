import { test, expect } from '@playwright/test';

test('editor separates energy balances, unlocks at 1, and saves current edits through native bridge', async ({ page }) => {
  await page.goto('/?native=1#/saveEditor');
  await expect(page.locator('.header-title h2')).toBeVisible();
  await page.evaluate(() => {
    window.savedFiles = [];
    window.pywebview = {api: {save_file: async (name, text) => {
      window.savedFiles.push({name, text});
      return {cancelled: false, path: '/tmp/save.json'};
    }}};
  });
  const data = {format: 'retb-save/1', userid: 'test', username: 'Player', tables: {
    session: {rows: [['test', JSON.stringify({
      valuables: {coins: 12, energy: 5867, freeEnergy: 0},
      chrdata: [{id: 1, jobID: 0, jobLevels: [12288000080, 0, 0]}]
    })]]},
    user_valuables: {cols: ['userid', 'coins', 'max_free_energy', 'valuables_raw'], rows: [['test', 12, 999, '9000']]},
    characters: {rows: [['test', 1, 0, 0, 0, '[80,0,0]', 0]]}
  }};
  await page.locator('input[type=file]').setInputFiles({name: 'save.json', mimeType: 'application/json', buffer: Buffer.from(JSON.stringify(data))});
  await expect(page.locator('input[title="Edit free energy"]')).toHaveAttribute('placeholder', '0');
  const paid = page.getByRole('heading', {name: 'Energy (Paid / Main)', exact: true}).locator('..').locator('input');
  await expect(paid).toHaveAttribute('placeholder', '5867');
  await page.locator('.job-chip').filter({hasText: 'J2'}).click();
  const row = page.locator('.job-level-row').nth(1);
  await expect(row.locator('input')).toHaveValue('1');
  await row.locator('input').fill('35');
  await expect(page.getByRole('button', {name: /Save As/})).toBeEnabled();
  await paid.fill('6000');
  await page.getByRole('button', {name: /Save As/}).click();
  await expect.poll(() => page.evaluate(() => window.savedFiles.length)).toBe(1);
  const saved = await page.evaluate(() => JSON.parse(window.savedFiles[0].text));
  const session = JSON.parse(saved.tables.session.rows[0][1]);
  expect(session.valuables).toEqual({coins: 12, energy: 6000, freeEnergy: 0});
  expect(session.chrdata[0].jobLevels[1] % 4096).toBe(35);
  expect(session.chrdata[0].jobLevels[1]).toBeGreaterThan(35);
  expect(saved.tables.user_valuables.rows[0].slice(2)).toEqual([999, '9000']);
});

test('native Open Save imports from the bridge and exports current inputs without a browser download', async ({page}) => {
  await page.goto('/?native=1#/saveEditor');
  const errors = [];
  page.on('pageerror', error => errors.push(String(error)));
  let downloads = 0;
  page.on('download', () => downloads++);
  await page.evaluate(() => {
    window.savedFiles = [];
    const content = JSON.stringify({format:'retb-save/1', userid:'test', username:'中文', tables:{
      session:{rows:[['test', JSON.stringify({valuables:{coins:7,energy:9999,freeEnergy:0}, chrdata:[]})]]},
      user_valuables:{cols:['userid','coins','max_free_energy'],rows:[['test',7,999]]}
    }});
    window.pywebview = {api:{
      open_file: async () => ({cancelled:false, name:'中文存档.json', content, size:content.length}),
      save_file: async (name,text) => {window.savedFiles.push({name,text});return {cancelled:false,path:'/tmp/中文存档.json'};}
    }};
  });
  await page.getByRole('button', {name:/Open Save/}).click();
  await expect(page.getByRole('heading', {name:'中文存档.json'})).toBeVisible();
  await page.locator('input[title="Edit paid energy"]').fill('8888');
  await page.getByRole('button', {name:/Save As/}).click();
  await expect.poll(() => page.evaluate(() => window.savedFiles.length)).toBe(1);
  const energy = await page.evaluate(() => JSON.parse(JSON.parse(window.savedFiles[0].text).tables.session.rows[0][1]).valuables.energy);
  expect(energy).toBe(8888);
  expect(downloads).toBe(0);
  expect(errors).toEqual([]);
});
