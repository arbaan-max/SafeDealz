import { render, screen } from '@testing-library/react';
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
});
