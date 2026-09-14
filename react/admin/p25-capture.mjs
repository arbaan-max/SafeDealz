import { chromium } from '@playwright/test';
import fs from 'node:fs';
import path from 'node:path';

const out = '/tmp/p25-visual';
fs.mkdirSync(path.join(out, 'html'), { recursive: true });
fs.mkdirSync(path.join(out, 'react'), { recursive: true });

const htmlScreens = ['A00','A01','A02','A03','A04','A05','A06','A07','A08','A09','A10','A11','A12','A13','A14','A15','A16','A17','A18','A19','A20','A21','A22','A23','A24','S04'];
const reactRoutes = {
  A00: '/login',
  A01: '/overview',
  A02: '/chains',
  A03: '/chains/new',
  A04: '/branches',
  A05: '/branches/new',
  A06: '/managers',
  A07: '/managers/new',
  A08: '/vendors',
  A09: '/vendors/new',
  A10: '/auctions',
  A11: '/auctions/r1',
  A12: '/payments',
  A13: '/payments/p1',
  A14: '/vendors/v1/wallet',
  A15: '/rewards',
  A16: '/rewards/customers/9876501234',
  A17: '/rewards/policy',
  A18: '/support',
  A19: '/reports',
  A20: '/settings',
  A21: '/audit',
  A22: '/account',
  A23: '/admins',
  A24: '/admins/new',
  S04: '/notifications',
};

const browser = await chromium.launch({ headless: true });
const context = await browser.newContext({ viewport: { width: 1440, height: 900 }, deviceScaleFactor: 1 });
const page = await context.newPage();

await page.goto('http://127.0.0.1:8765/design.html', { waitUntil: 'networkidle' });
await page.getByRole('button', { name: /Super Admin/i }).click();
await page.waitForTimeout(400);
for (const id of htmlScreens) {
  await page.selectOption('#screenSelect', id);
  await page.waitForTimeout(250);
  const frame = page.locator('.desktop-app').first();
  await frame.waitFor({ state: 'visible' });
  await frame.screenshot({ path: path.join(out, 'html', `${id}.png`) });
  console.log('html', id);
}

await page.goto('http://127.0.0.1:4173/login', { waitUntil: 'networkidle' });
await page.locator('.login-page').screenshot({ path: path.join(out, 'react', 'A00.png') });
console.log('react A00');
await page.locator('#email').fill('admin@example.test');
await page.locator('#password').fill('preview');
await page.getByRole('button', { name: 'Login' }).click();
await page.getByRole('heading', { name: 'Overview' }).waitFor({ timeout: 8000 });

for (const [id, route] of Object.entries(reactRoutes)) {
  if (id === 'A00') continue;
  await page.goto(`http://127.0.0.1:4173${route}`, { waitUntil: 'networkidle' });
  await page.waitForTimeout(400);
  await page.locator('.admin-app, .login-page').first().screenshot({ path: path.join(out, 'react', `${id}.png`) });
  console.log('react', id, route);
}

await browser.close();
console.log('done', out);
