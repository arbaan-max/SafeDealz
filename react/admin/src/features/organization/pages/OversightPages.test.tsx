import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { OverviewPage } from './OverviewPage';
import { ReportsPage } from './ReportsPage';
import { AuditPage } from './AuditPage';
import { AccountPage } from './AccountPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('A01 shows operational totals without an SMS attention tile', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/overview')) {
      return new Response(JSON.stringify({ success: true, data: { liveAuctions: 2, awaitingAcceptance: 1, paymentExceptions: 1, completedValuePaise: 800000, needsAttention: [{ kind: 'payment', id: 'p1', label: 'Payment needs attention' }] } }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <OverviewPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Overview' })).toBeInTheDocument();
  expect(await screen.findByText('Payment needs attention')).toBeInTheDocument();
  expect(screen.queryByText(/sms/i)).not.toBeInTheDocument();
});

test('A19 exports paid value that matches the report total', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input, init) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/reports/export') && init?.method === 'POST') {
      return new Response(JSON.stringify({ success: true, data: { filename: 'safedealz-report.csv', csv: 'paidValuePaise,800000' } }), { status: 200 });
    }
    if (url.includes('/reports')) {
      return new Response(JSON.stringify({ success: true, data: { paidValuePaise: 800000, billingReconciliation: { paidValuePaise: 800000, rewardOutstandingValuePaise: 40000 }, auctionConversion: { started: 1, accepted: 1, rate: 1 } } }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <ReportsPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Reports' })).toBeInTheDocument();
  await user.click(await screen.findByRole('button', { name: 'Export report' }));
  expect(await screen.findByText(/paidValuePaise,800000/)).toBeInTheDocument();
});

test('A21 lists an immutable audit trail', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/audit')) {
      return new Response(JSON.stringify({ success: true, data: [{ id: 'a1', actorRole: 'super_admin', action: 'support.created', entityType: 'support_ticket', entityId: 't1', createdAt: '2026-09-14' }] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <AuditPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Audit log' })).toBeInTheDocument();
  expect(await screen.findByText('support.created')).toBeInTheDocument();
  expect(screen.queryByRole('button', { name: /edit|delete/i })).not.toBeInTheDocument();
});

test('A22 lists sessions and returns to overview', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/auth/sessions')) {
      return new Response(JSON.stringify({ success: true, data: [{ id: 's1', clientType: 'web', current: true }] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <AccountPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Account' })).toBeInTheDocument();
  expect(await screen.findByText(/current/)).toBeInTheDocument();
  expect(screen.getByRole('link', { name: 'Back to overview' })).toHaveAttribute('href', '/overview');
});
