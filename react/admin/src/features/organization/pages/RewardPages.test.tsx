import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { RewardOverviewPage } from './RewardOverviewPage';
import { RewardCustomerPage } from './RewardCustomerPage';
import { RewardPolicyPage } from './RewardPolicyPage';
import { AppProviders } from '../../../app/providers/AppProviders';

const overview = {
  totals: { issuedPoints: 800, redeemedPoints: 0, outstandingPoints: 800, outstandingValuePaise: 40000 },
  branches: [{ branchId: 'b1', branchName: 'Indiranagar', issuedPoints: 800, redeemedPoints: 0, outstandingPoints: 800, outstandingValuePaise: 40000 }],
  policy: { version: 1, redemptionScope: 'branch_only', futureScopesInactive: true },
};

const customer = {
  phone: '9876543210',
  customerName: 'Anita',
  balances: [{ branchId: 'b1', branchName: 'Indiranagar', pointsBalance: 800, issuedPoints: 800, redeemedPoints: 0, outstandingValuePaise: 40000 }],
  entries: [{ type: 'earn', points: 800, valuePaise: 40000, policyVersion: 1, dealId: 'deal1', reason: 'paid_deal' }],
};

test('A15 lists branch reward totals and customer lookup', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/rewards/overview')) {
      return new Response(JSON.stringify({ success: true, data: overview }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([
    { path: '/', element: <RewardOverviewPage /> },
    { path: '/rewards/customers/:phone', element: <p>Customer</p> },
  ]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Rewards' })).toBeInTheDocument();
  expect(await screen.findByText('Indiranagar')).toBeInTheDocument();
  expect(screen.getByText(/Outstanding 800 pts/)).toBeInTheDocument();
  await user.type(screen.getByLabelText(/Customer phone/i), '9876543210');
  await user.click(screen.getByRole('button', { name: 'Find customer' }));
  expect(await screen.findByText('Customer')).toBeInTheDocument();
});

test('A16 shows branch-separated earn entries', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/rewards/customers/9876543210')) {
      return new Response(JSON.stringify({ success: true, data: customer }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter(
    [{ path: '/rewards/customers/:phone', element: <RewardCustomerPage /> }],
    { initialEntries: ['/rewards/customers/9876543210'] },
  );
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Anita rewards' })).toBeInTheDocument();
  expect(screen.getByText('Indiranagar')).toBeInTheDocument();
  expect(screen.getByText('earn')).toBeInTheDocument();
  expect(screen.getByText(/cannot redeem/i)).toBeInTheDocument();
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
