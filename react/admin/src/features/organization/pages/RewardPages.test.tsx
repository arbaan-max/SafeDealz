import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { RewardOverviewPage } from './RewardOverviewPage';
import { RewardBranchPage } from './RewardBranchPage';
import { RewardCustomerPage } from './RewardCustomerPage';
import { RewardPolicyPage } from './RewardPolicyPage';
import { AppProviders } from '../../../app/providers/AppProviders';

const overview = {
  totals: { issuedPoints: 800, redeemedPoints: 0, outstandingPoints: 800, outstandingValuePaise: 40000 },
  branches: [{ branchId: 'b1', branchName: 'Indiranagar', customerCount: 1, redeemedCustomerCount: 0, issuedPoints: 800, redeemedPoints: 0, outstandingPoints: 800, outstandingValuePaise: 40000 }],
  policy: { version: 1, redemptionScope: 'branch_only', futureScopesInactive: true },
};

const customer = {
  phone: '9876543210',
  customerName: 'Anita',
  issuedPoints: 800,
  redeemedPoints: 0,
  outstandingPoints: 800,
  outstandingValuePaise: 40000,
  earnCount: 1,
  redeemCount: 0,
  balances: [{ branchId: 'b1', branchName: 'Indiranagar', pointsBalance: 800, issuedPoints: 800, redeemedPoints: 0, outstandingValuePaise: 40000 }],
  entries: [{
    type: 'earn',
    points: 800,
    valuePaise: 40000,
    remainingPoints: 800,
    policyVersion: 1,
    dealId: 'deal1',
    auctionRoundId: 'a1',
    deviceModel: 'iPhone 14',
    deviceStorage: '128 GB',
    saleAmountPaise: 800000,
    branchName: 'Indiranagar',
    reason: 'paid_deal',
    createdAt: '2026-09-15T04:00:00.000Z',
  }],
};

const branchDetail = {
  branchId: 'b1',
  branchName: 'Indiranagar',
  customerCount: 1,
  redeemedCustomerCount: 0,
  issuedPoints: 800,
  redeemedPoints: 0,
  outstandingPoints: 800,
  outstandingValuePaise: 40000,
  customers: [{ customerPhone: '9876543210', customerName: 'Anita', branchName: 'Indiranagar', pointsBalance: 800, issuedPoints: 800, redeemedPoints: 0, outstandingValuePaise: 40000 }],
  entries: customer.entries,
};

const mockFetch = () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/rewards/overview')) {
      return new Response(JSON.stringify({ success: true, data: overview }), { status: 200 });
    }
    if (url.includes('/rewards/branches/b1')) {
      return new Response(JSON.stringify({ success: true, data: branchDetail }), { status: 200 });
    }
    if (url.includes('/rewards/customers/9876543210')) {
      return new Response(JSON.stringify({ success: true, data: customer }), { status: 200 });
    }
    if (url.includes('/rewards/customers')) {
      return new Response(JSON.stringify({ success: true, data: { page: 1, limit: 40, total: 1, items: [{ phone: '9876543210', customerName: 'Anita', issuedPoints: 800, redeemedPoints: 0, outstandingPoints: 800 }] } }), { status: 200 });
    }
    if (url.includes('/rewards/policy') && url.includes('POST')) {
      return new Response(JSON.stringify({ success: true, data: { current: { version: 2, earnPointsPerHundredRupees: 10, pointValuePaise: 50, redemptionScope: 'branch_only' }, versions: [] } }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
};

const renderRewards = (initial = '/') => {
  const router = createMemoryRouter(
    [
      { path: '/', element: <RewardOverviewPage /> },
      { path: '/rewards', element: <RewardOverviewPage /> },
      { path: '/rewards/customers/:phone', element: <RewardCustomerPage /> },
      { path: '/rewards/branches/:branchId', element: <RewardBranchPage /> },
      { path: '/auctions/:id', element: <h1>Device and auction detail</h1> },
    ],
    { initialEntries: [initial] },
  );
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
};

test('A15 lists branch reward totals and opens customer lookup', async () => {
  const user = userEvent.setup();
  mockFetch();
  document.cookie = 'sd_csrf=c';
  renderRewards();
  expect(await screen.findByRole('heading', { name: 'Rewards' })).toBeInTheDocument();
  expect(await screen.findByText('Indiranagar')).toBeInTheDocument();
  expect(screen.getByText('Outstanding points')).toBeInTheDocument();
  expect(screen.getAllByText('800 pts').length).toBeGreaterThan(0);
  await user.click(screen.getByRole('tab', { name: 'Customers' }));
  expect(screen.getByRole('heading', { name: 'Customers' })).toBeInTheDocument();
  await user.type(screen.getByLabelText(/Customer phone/i), '9876543210');
  await user.click(screen.getByRole('button', { name: 'Find customer' }));
  expect(await screen.findByRole('heading', { name: 'Anita rewards' })).toBeInTheDocument();
  expect(screen.getByText('History')).toBeInTheDocument();
  expect(screen.getAllByText('Earned').length).toBeGreaterThan(0);
  expect(screen.getByText(/iPhone 14/)).toBeInTheDocument();
});

test('A15 opens branch customers and phone-sale detail', async () => {
  const user = userEvent.setup();
  mockFetch();
  document.cookie = 'sd_csrf=c';
  renderRewards();
  expect(await screen.findByText('Indiranagar')).toBeInTheDocument();
  await user.click(screen.getByText('Indiranagar'));
  expect(await screen.findByRole('heading', { name: 'Indiranagar rewards' })).toBeInTheDocument();
  expect(screen.getByText('Customers earned')).toBeInTheDocument();
  expect(screen.getByText('Anita')).toBeInTheDocument();
  await user.click(screen.getByText(/iPhone 14/));
  expect(await screen.findByRole('heading', { name: 'Device and auction detail' })).toBeInTheDocument();
});

test('A16 shows branch-separated earn entries and opens the device', async () => {
  const user = userEvent.setup();
  mockFetch();
  document.cookie = 'sd_csrf=c';
  renderRewards('/rewards/customers/9876543210');
  expect(await screen.findByRole('heading', { name: 'Anita rewards' })).toBeInTheDocument();
  expect(screen.getAllByText('Indiranagar').length).toBeGreaterThan(0);
  expect(screen.getAllByText('Earned').length).toBeGreaterThan(0);
  expect(screen.getByText(/cannot redeem/i)).toBeInTheDocument();
  await user.click(screen.getByText(/iPhone 14/));
  expect(await screen.findByRole('heading', { name: 'Device and auction detail' })).toBeInTheDocument();
});

test('A17 keeps chain and multi-branch redemption inactive', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input, init) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/rewards/policy') && init?.method === 'POST') {
      return new Response(JSON.stringify({ success: true, data: { current: { version: 2, earnPointsPerHundredRupees: 10, pointValuePaise: 50, redemptionScope: 'branch_only' }, versions: [] } }), { status: 200 });
    }
    if (url.includes('/rewards/policy')) {
      return new Response(JSON.stringify({ success: true, data: { current: { version: 1, earnPointsPerHundredRupees: 10, pointValuePaise: 50, redemptionScope: 'branch_only', futureScopesInactive: true }, versions: [] } }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/rewards/policy', element: <RewardPolicyPage /> }], { initialEntries: ['/rewards/policy'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Reward policy' })).toBeInTheDocument();
  expect(screen.getByLabelText(/Redemption scope/i)).toBeDisabled();
  expect(screen.getByText(/cannot be enabled/i)).toBeInTheDocument();
  await user.click(screen.getByRole('button', { name: 'Save' }));
  expect(await screen.findByText(/current version 2/i)).toBeInTheDocument();
});
