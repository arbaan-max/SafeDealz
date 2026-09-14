import { render, screen } from '@testing-library/react';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { VendorWalletPage } from './VendorWalletPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('A14 shows Super Admin ledger amounts', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/wallets/v1')) {
      return new Response(JSON.stringify({
        success: true,
        data: {
          id: 'w1', vendorAccountId: 'v1', availablePaise: 10000, reservedPaise: 2500, processingPaise: 0, paymentsProcessingPaise: 0, currency: 'INR',
          ledger: [{ id: 'l1', type: 'reserve', amountPaise: 2500, availableAfterPaise: 10000, reservedAfterPaise: 2500 }],
          reservations: [{ id: 'h1', amountPaise: 2500, status: 'held', reason: 'bid' }],
        },
      }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/vendors/:id/wallet', element: <VendorWalletPage /> }], { initialEntries: ['/vendors/v1/wallet'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Vendor wallet' })).toBeInTheDocument();
  expect(await screen.findByText('Available')).toBeInTheDocument();
  expect((await screen.findAllByText('₹100')).length).toBeGreaterThan(0);
  expect(await screen.findByText('Reserve')).toBeInTheDocument();
});

test('A14 hides amounts for Admin', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '2', email: 'ananya@test.dev', role: 'admin' } } }), { status: 200 });
    }
    if (url.includes('/wallets/v1')) {
      return new Response(JSON.stringify({ success: true, data: { id: 'w1', vendorAccountId: 'v1', currency: 'INR', ledger: [], reservations: [] } }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/vendors/:id/wallet', element: <VendorWalletPage /> }], { initialEntries: ['/vendors/v1/wallet'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByText('Available')).toBeInTheDocument();
  expect((await screen.findAllByText('Hidden')).length).toBeGreaterThan(0);
  expect(await screen.findByText('Ledger is hidden for this role.')).toBeInTheDocument();
});
