import { render, screen } from '@testing-library/react';
import { RequireAccess } from './RequireAccess';

const admin = { role: 'admin' as const, permissions: new Set(['stores:read']) };

test('allows matching role and permission', () => {
  render(<RequireAccess context={admin} required={{ roles: ['admin'], permissions: ['stores:read'] }}>Allowed</RequireAccess>);
  expect(screen.getByText('Allowed')).toBeInTheDocument();
});

test.each([null, admin])('denies absent context or missing access', (context) => {
  const required = context ? { roles: ['super_admin'] as const } : { roles: ['admin'] as const };
  render(<RequireAccess context={context} required={required}>Allowed</RequireAccess>);
  expect(screen.getByRole('alert')).toHaveTextContent('Access denied');
});
