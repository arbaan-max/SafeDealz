import { render, screen } from '@testing-library/react';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { ManagerListPage } from './ManagerListPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('shows empty manager scope copy', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'ananya@test.dev', role: 'admin' } } }), { status: 200 });
    }
    if (url.includes('/managers') || url.includes('/branches') || url.includes('/chains')) {
      return new Response(JSON.stringify({ success: true, data: [] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/', element: <ManagerListPage /> }]);
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Managers' })).toBeInTheDocument();
  expect(await screen.findByText('No managers are assigned to your stores.')).toBeInTheDocument();
});
