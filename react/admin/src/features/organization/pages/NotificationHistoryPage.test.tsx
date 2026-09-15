import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { NotificationHistoryPage } from './NotificationHistoryPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('S04 lists delivery history and can send a vendor broadcast', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input, init) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/notifications/broadcasts') && init?.method === 'POST') {
      return new Response(JSON.stringify({ success: true, data: { campaignId: 'c1', delivered: 1 } }), { status: 201 });
    }
    if (url.includes('/notifications/history')) {
      return new Response(JSON.stringify({ success: true, data: [{ id: 'n1', title: 'Payout paid', audience: 'event', recipientRole: 'vendor', status: 'delivered' }] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <NotificationHistoryPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Notifications' })).toBeInTheDocument();
  expect(await screen.findByText('Payout paid')).toBeInTheDocument();
  expect(screen.getByRole('option', { name: 'All stores' })).toBeInTheDocument();
  expect(screen.getByRole('option', { name: 'All users' })).toBeInTheDocument();
  expect(screen.getByRole('option', { name: 'All vendors' })).toBeInTheDocument();
  expect(screen.queryByRole('option', { name: 'One store' })).not.toBeInTheDocument();
  expect(screen.queryByRole('option', { name: 'One vendor' })).not.toBeInTheDocument();
  await user.type(screen.getByLabelText('Title'), 'Pickup hours');
  await user.type(screen.getByLabelText('Message'), 'Stores open 10–7.');
  await user.click(screen.getByRole('button', { name: 'Send notification' }));
  expect(await screen.findByText('Payout paid')).toBeInTheDocument();
});
