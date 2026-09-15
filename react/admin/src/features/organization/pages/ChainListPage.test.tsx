import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { ChainListPage } from './ChainListPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('shows empty chain scope copy', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    if (String(input).includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (String(input).includes('/chains')) {
      return new Response(JSON.stringify({ success: true, data: [] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <ChainListPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Chains' })).toBeInTheDocument();
  expect(await screen.findByText('No chains in your assigned scope.')).toBeInTheDocument();
  expect(screen.getByRole('button', { name: 'Refresh' })).toBeInTheDocument();
});

test('asks to confirm delete in a dialog', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    if (String(input).includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (String(input).includes('/chains')) {
      return new Response(JSON.stringify({ success: true, data: [{ id: 'c1', name: 'Sangeetha', code: 'SAN', active: true, branchCount: 1 }] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <ChainListPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  await user.click(await screen.findByRole('button', { name: 'Delete' }));
  expect(screen.getByRole('alertdialog')).toHaveTextContent('Are you sure you want to delete?');
  expect(screen.queryByText(/stay in the database/i)).not.toBeInTheDocument();
  await user.click(screen.getByRole('button', { name: 'Cancel' }));
  expect(screen.queryByRole('alertdialog')).not.toBeInTheDocument();
  expect(screen.getByText('Sangeetha')).toBeInTheDocument();
});
