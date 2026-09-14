import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { SettingsPage } from './SettingsPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('A20 Super Admin can save future-round timers', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input, init) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/settings') && (!init || init.method === 'GET' || !init.method)) {
      return new Response(JSON.stringify({ success: true, data: { biddingMinutes: 3, acceptanceMinutes: 10 } }), { status: 200 });
    }
    if (url.includes('/settings') && init?.method === 'PATCH') {
      return new Response(JSON.stringify({ success: true, data: { biddingMinutes: 10, acceptanceMinutes: 15 } }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/settings', element: <SettingsPage /> }], { initialEntries: ['/settings'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Auction timers' })).toBeInTheDocument();
  const bidding = await screen.findByLabelText(/Vendor bidding duration/i);
  await user.clear(bidding);
  await user.type(bidding, '10');
  const acceptance = screen.getByLabelText(/Manager acceptance duration/i);
  await user.clear(acceptance);
  await user.type(acceptance, '15');
  await user.click(screen.getByRole('button', { name: 'Save' }));
  expect(await screen.findByDisplayValue('10')).toBeInTheDocument();
});
