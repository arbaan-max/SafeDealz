import { render, screen } from '@testing-library/react';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { VendorFormPage } from './VendorFormPage';
import { AppProviders } from '../../../app/providers/AppProviders';

test('A09 matches HTML vendor onboarding form', async () => {
  vi.spyOn(globalThis, 'fetch').mockImplementation(async (input) => {
    const url = String(input);
    if (url.includes('/auth/refresh')) {
      return new Response(JSON.stringify({ success: true, data: { accessToken: 't', csrfToken: 'c', expiresIn: 600, account: { id: '1', email: 'root@test.dev', role: 'super_admin' } } }), { status: 200 });
    }
    if (url.includes('/chains')) {
      return new Response(JSON.stringify({ success: true, data: [
        { id: 'c1', name: 'PAI', code: 'PAI', active: true },
        { id: 'c2', name: 'Sangeetha', code: 'SAN', active: true },
      ] }), { status: 200 });
    }
    if (url.includes('/branches')) {
      return new Response(JSON.stringify({ success: true, data: [
        { id: 'b1', chainId: 'c1', name: 'Indiranagar', code: 'PAI-IND', payoutReady: true, active: true },
        { id: 'b2', chainId: 'c1', name: 'Jayanagar', code: 'PAI-JAY', payoutReady: true, active: true },
        { id: 'b3', chainId: 'c2', name: 'Koramangala', code: 'SAN-KOR', payoutReady: true, active: true },
      ] }), { status: 200 });
    }
    return new Response('{}', { status: 404 });
  });
  document.cookie = 'sd_csrf=c';
  const router = createMemoryRouter([{ path: '/vendors/new', element: <VendorFormPage /> }], { initialEntries: ['/vendors/new'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(await screen.findByRole('heading', { name: 'Vendor onboarding/edit' })).toBeInTheDocument();
  expect(screen.getByRole('heading', { name: 'Create vendor' })).toBeInTheDocument();
  expect(screen.getByLabelText('Name')).toBeInTheDocument();
  expect(screen.getByLabelText('Email address')).toBeInTheDocument();
  expect(screen.getByLabelText('Phone')).toBeInTheDocument();
  expect(screen.getByLabelText('Initial password')).toBeInTheDocument();
  expect(screen.getByLabelText('Status')).toBeInTheDocument();
  expect(screen.getByRole('heading', { name: 'Assigned branches' })).toBeInTheDocument();
  expect(await screen.findByRole('checkbox', { name: 'PAI / Indiranagar' })).toBeInTheDocument();
  expect(screen.getByRole('checkbox', { name: 'PAI / Jayanagar' })).toBeInTheDocument();
  expect(screen.getByRole('checkbox', { name: 'Sangeetha / Koramangala' })).toBeInTheDocument();
  expect(screen.getByRole('checkbox', { name: 'Link an existing vendor instead of creating a new account' })).toBeInTheDocument();
  expect(screen.getByRole('button', { name: 'Save vendor' })).toBeInTheDocument();
  expect(screen.getByRole('link', { name: 'Back to list' })).toBeInTheDocument();
});
