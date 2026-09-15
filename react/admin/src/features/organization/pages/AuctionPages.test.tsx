import { render, screen } from '@testing-library/react';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { AuctionListPage } from './AuctionListPage';
import { AuctionDetailPage } from './AuctionDetailPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('A10 lists auction rounds', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/auctions')) {
      return new Response(JSON.stringify({ success: true, data: [{ id: 'a1', roundNumber: 1, status: 'awaiting_pickup', highestAmountPaise: 800000 }] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <AuctionListPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Auctions' })).toBeInTheDocument();
  expect(await screen.findByText('Round 1')).toBeInTheDocument();
});

test('A11 shows the bid table', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/auctions/a1/bids')) {
      return new Response(JSON.stringify({ success: true, data: [{ id: 'b1', amountPaise: 800000, feePaise: 64000, status: 'committed' }] }), { status: 200 });
    }
    if (url.includes('/auctions/a1')) {
      return new Response(JSON.stringify({
        success: true,
        data: {
          id: 'a1',
          roundNumber: 1,
          status: 'accepted',
          highestAmountPaise: 800000,
          paymentId: 'pay1',
          device: {
            model: 'Samsung Galaxy S22',
            platform: 'android',
            storage: '128 GB',
            ram: '8 GB',
            imei1: '353456789012345',
            imei2: '353456789012346',
            inspectionFields: [{ key: 'touch', label: 'Screen touch calibration', value: 'Working' }],
          },
          diagnostic: { checks: [{ id: 'wifi', label: 'Wi-Fi', outcome: 'passed' }] },
          deal: {
            customerName: 'Priya Nair',
            customerPhone: '9876501234',
            otpVerified: true,
            idCaptured: true,
            portraitCaptured: true,
          },
        },
      }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/auctions/:id', element: <AuctionDetailPage /> }], { initialEntries: ['/auctions/a1'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Device and auction detail' })).toBeInTheDocument();
  expect(await screen.findByText('353456789012345')).toBeInTheDocument();
  expect(await screen.findByText('353456789012346')).toBeInTheDocument();
  expect(await screen.findByText('Priya Nair')).toBeInTheDocument();
  expect(await screen.findByText('Working')).toBeInTheDocument();
  expect(await screen.findByText('Passed')).toBeInTheDocument();
  expect(screen.getByRole('link', { name: 'View payment' })).toHaveAttribute('href', '/payments/pay1');
  expect(await screen.findByText(/committed/)).toBeInTheDocument();
});
