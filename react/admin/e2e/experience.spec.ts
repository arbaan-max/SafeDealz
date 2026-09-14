import { expect, test } from '@playwright/test';

test('catalogued admin screens, nested back, empty and error states stay on the sky-blue theme', async ({ page }) => {
  test.setTimeout(60_000);
  await page.route('**/auth/refresh', (route) => route.fulfill({ status: 401, contentType: 'application/json', body: JSON.stringify({ success: false, error: { code: 'SESSION_INVALID', message: 'Invalid' } }) }));
  await page.route('**/auth/login', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: { accessToken: 'test', csrfToken: 'csrf', expiresIn: 600, account: { id: '1', email: 'admin@test.dev', role: 'super_admin' } } }) }));
  await page.route('**/overview', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: { liveAuctions: 0, awaitingAcceptance: 0, paymentExceptions: 0, completedValuePaise: 0, needsAttention: [] } }) }));
  await page.route('**/chains', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/branches', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/admins', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/managers', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/vendors', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/payments', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/auctions', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/rewards/overview', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: { totals: { issuedPoints: 0 }, policy: { redemptionScope: 'branch_only' } } }) }));
  await page.route('**/notifications/history', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/tickets', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route((url) => url.pathname.endsWith('/reports'), (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: { auctionConversion: { started: 0, accepted: 0 }, paidValuePaise: 0 } }) }));
  await page.route('**/audit', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [] }) }));
  await page.route('**/auth/sessions', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: [{ id: 's1', clientType: 'web', current: true }] }) }));
  await page.route('**/settings', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: { biddingMinutes: 3, acceptanceMinutes: 10 } }) }));

  await page.goto('/login');
  await page.getByLabel('Email').fill('admin@test.dev');
  await page.getByRole('textbox', { name: 'Password' }).fill('Valid password');
  await page.getByRole('button', { name: 'Login' }).click();
  await expect(page.getByRole('heading', { name: 'Overview' })).toBeVisible();
  await page.unroute('**/auth/refresh');
  await page.route('**/auth/refresh', (route) => route.fulfill({ status: 200, contentType: 'application/json', body: JSON.stringify({ success: true, data: { accessToken: 'test', csrfToken: 'csrf', expiresIn: 600, account: { id: '1', email: 'admin@test.dev', role: 'super_admin' } } }) }));
  await expect(page.getByText('No payment or branch-setup issues.')).toBeVisible();
  await expect(page.locator('body')).toHaveCSS('background-color', 'rgb(240, 249, 255)');

  const nav = page.getByRole('navigation', { name: 'Primary navigation' });
  const destinations: { href: string; heading: string }[] = [
    { href: '/chains', heading: 'Chains' },
    { href: '/branches', heading: 'Branches' },
    { href: '/admins', heading: 'Admins' },
    { href: '/managers', heading: 'Managers' },
    { href: '/vendors', heading: 'Vendors' },
    { href: '/payments', heading: 'Payments' },
    { href: '/auctions', heading: 'Auctions' },
    { href: '/rewards', heading: 'Rewards' },
    { href: '/support', heading: 'Support' },
    { href: '/reports', heading: 'Reports' },
    { href: '/audit', heading: 'Audit log' },
    { href: '/settings', heading: 'Settings' },
  ];
  for (const item of destinations) {
    await nav.locator(`a[href="${item.href}"]`).click({ force: true });
    await expect(page.getByRole('heading', { name: item.heading })).toBeVisible();
  }
  await nav.getByRole('link', { name: 'Chains' }).click();
  await page.getByRole('link', { name: 'Create chain' }).click();
  await expect(page.getByRole('link', { name: 'Back to chains' })).toBeVisible();
  await page.getByRole('link', { name: 'Back to chains' }).click();
  await expect(page.getByRole('heading', { name: 'Chains' })).toBeVisible();

  await page.getByRole('link', { name: 'Account' }).click();
  await expect(page.getByRole('link', { name: 'Back to overview' })).toBeVisible();
  await page.getByRole('link', { name: 'Notifications' }).click();
  await expect(page.getByRole('link', { name: 'Back to overview' })).toBeVisible();
  await nav.getByRole('link', { name: 'Reports' }).click();
  await expect(page.getByText('No results for this period and scope.')).toBeVisible();

  await page.unroute('**/overview');
  await page.route('**/overview', (route) => route.fulfill({ status: 500, contentType: 'application/json', body: JSON.stringify({ success: false, error: { code: 'SERVER', message: 'Overview failed' } }) }));
  await nav.getByRole('link', { name: 'Overview' }).click();
  await expect(page.getByText('Overview failed')).toBeVisible();
});
