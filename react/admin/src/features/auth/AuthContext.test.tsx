import { render, screen, waitFor } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { useEffect } from 'react';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { AppProviders } from '../../app/providers/AppProviders';
import { AuthProvider, useAuth } from './AuthContext';
import { LoginPage } from './pages/LoginPage';
import { OverviewPage } from '../organization/pages/OverviewPage';
import { RequireSession } from './components/RequireSession';

const session = { accessToken: 'access-1', csrfToken: 'csrf-1', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' as const } };
const overview = { liveAuctions: 0, awaitingAcceptance: 0, paymentExceptions: 0, completedValuePaise: 0, needsAttention: [] };

function ParallelRefreshProbe() {
  const auth = useAuth();
  useEffect(() => {
    void Promise.all([auth.refresh({ optional: true }), auth.refresh({ optional: true })]);
  }, [auth.refresh]); // eslint-disable-line react-hooks/exhaustive-deps -- probe current auth bag once
  return <p>{auth.status}</p>;
}

afterEach(() => {
  document.cookie = 'sd_csrf=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/';
  vi.restoreAllMocks();
});

test('shares one in-flight refresh so the session family is not reused', async () => {
  let refreshes = 0;
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      refreshes += 1;
      await new Promise((resolve) => setTimeout(resolve, 40));
      return new Response(JSON.stringify({ success: true, data: session }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=csrf-1';
  render(<AuthProvider><ParallelRefreshProbe /></AuthProvider>);
  await waitFor(() => expect(screen.getByText('authenticated')).toBeInTheDocument());
  expect(refreshes).toBe(1);
});

test('login stays on Overview even when home immediately refreshes the session', async () => {
  const user = userEvent.setup();
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/login')) {
      return new Response(JSON.stringify({ success: true, data: session }), { status: 200, headers: { 'set-cookie': 'sd_csrf=csrf-1; Path=/' } });
    }
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { ...session, accessToken: 'access-2' } }), { status: 200 });
    }
    if (url.includes('/overview')) {
      return new Response(JSON.stringify({ success: true, data: overview }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  const router = createMemoryRouter([
    { path: '/', element: <RequireSession />, children: [{ path: 'overview', element: <OverviewPage /> }] },
    { path: '/login', element: <LoginPage /> },
  ], { initialEntries: ['/login'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  await user.type(screen.getByRole('textbox', { name: 'Email address' }), 'root@test.dev');
  await user.type(screen.getByLabelText('Password'), '1234567890');
  await user.click(screen.getByRole('button', { name: 'Login' }));
  expect(await screen.findByRole('heading', { name: 'Overview' })).toBeInTheDocument();
  expect(screen.queryByRole('heading', { name: 'Super Admin Login' })).not.toBeInTheDocument();
});
