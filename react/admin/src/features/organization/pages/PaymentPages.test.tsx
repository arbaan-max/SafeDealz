import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { PaymentListPage } from './PaymentListPage';
import { PaymentDetailPage } from './PaymentDetailPage';
import { AppProviders } from '../../../app/providers/AppProviders';

const payment = {
  id: 'pay1', dealId: 'deal1', status: 'needs_attention', amountPaise: 800000, feePaise: 64000,
  beneficiaryName: 'PAI', accountNumberMasked: '•••• 4821', ifsc: 'HDFC0001234',
  providerTransferId: 'payout_test_1', attempts: [{ event: 'failed', status: 'needs_attention', note: 'Provider reported failure; funds stay committed' }],
};

test('A12 lists payouts without an approve action', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/payments')) {
      return new Response(JSON.stringify({ success: true, data: [payment] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <PaymentListPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Payments' })).toBeInTheDocument();
  expect(await screen.findByText('Needs attention')).toBeInTheDocument();
  expect(screen.queryByText(/approve payout/i)).not.toBeInTheDocument();
});

test('A13 retries a failed payout and never offers approve', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input, init) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/payments/pay1/retry') && init?.method === 'POST') {
      return new Response(JSON.stringify({ success: true, data: { ...payment, status: 'processing' } }), { status: 200 });
    }
    if (url.includes('/payments/pay1')) {
      return new Response(JSON.stringify({ success: true, data: payment }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/payments/:id', element: <PaymentDetailPage /> }], { initialEntries: ['/payments/pay1'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Payment detail' })).toBeInTheDocument();
  expect(screen.queryByRole('button', { name: /approve/i })).not.toBeInTheDocument();
  expect(screen.queryByRole('link', { name: 'Report issue' })).not.toBeInTheDocument();
  await user.click(await screen.findByRole('button', { name: 'Retry payout' }));
  expect(await screen.findByText(/processing/i)).toBeInTheDocument();
});
