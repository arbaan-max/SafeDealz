import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { SupportListPage } from './SupportListPage';
import { SupportDetailPage } from './SupportDetailPage';
import { AppProviders } from '../../../app/providers/AppProviders';

const ticket = {
  id: 't1', creatorRole: 'vendor', subjectType: 'deal', subjectId: 'deal1', reasonCode: 'pickup_issue', status: 'open',
  notes: [{ id: 'n1', authorRole: 'vendor', body: 'Store hours are unclear.' }],
};

test('A18 lists manager and vendor tickets without a create control', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/tickets')) {
      return new Response(JSON.stringify({ success: true, data: [ticket] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <SupportListPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Support' })).toBeInTheDocument();
  expect(await screen.findByText('Vendor')).toBeInTheDocument();
  expect(screen.queryByRole('button', { name: /create ticket|new ticket/i })).not.toBeInTheDocument();
});

test('A18 assigns and resolves without a financial shortcut', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input, init) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/tickets/t1/status') && init?.method === 'POST') {
      return new Response(JSON.stringify({ success: true, data: { ...ticket, status: 'resolved' } }), { status: 200 });
    }
    if (url.includes('/tickets/t1')) {
      return new Response(JSON.stringify({ success: true, data: ticket }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter(
    [{ path: '/support/:id', element: <SupportDetailPage /> }],
    { initialEntries: ['/support/t1'] },
  );
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Support case' })).toBeInTheDocument();
  expect(await screen.findByText(/Store hours are unclear/)).toBeInTheDocument();
  expect(screen.queryByRole('button', { name: /refund|approve payout/i })).not.toBeInTheDocument();
  await user.click(screen.getByRole('button', { name: 'Resolve' }));
  expect(await screen.findByText('resolved')).toBeInTheDocument();
});
