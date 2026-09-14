import { render, screen } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { RoleGate } from './RoleGate';
import { AuthProvider } from '../../auth/AuthContext';

test('denies Admin access to Super Admin-only screens', async () => {
  vi.spyOn(globalThis, 'fetch').mockResolvedValue(new Response(JSON.stringify({ success: false, error: { code: 'SESSION_INVALID', message: 'Invalid' } }), { status: 401 }));
  render(<AuthProvider><MemoryRouter><RoleGate roles={['super_admin']}><p>Secret</p></RoleGate></MemoryRouter></AuthProvider>);
  expect(await screen.findByRole('alert')).toHaveTextContent('Access denied');
});
