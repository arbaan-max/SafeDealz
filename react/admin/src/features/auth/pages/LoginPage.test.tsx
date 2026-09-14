import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { AppProviders } from '../../../app/providers/AppProviders';
import { LoginPage } from './LoginPage';

test('shows only the approved credentials and in-field password control', async () => {
  const router = createMemoryRouter([{ path: '/login', element: <LoginPage /> }], { initialEntries: ['/login'] });
  render(<AppProviders><RouterProvider router={router} /></AppProviders>);
  expect(screen.getByRole('textbox', { name: 'Email' })).toBeInTheDocument();
  const password = screen.getByLabelText('Password');
  expect(password).toHaveAttribute('type', 'password');
  expect(screen.getByRole('button', { name: 'Login' })).toBeInTheDocument();
  expect(screen.queryByText(/forgot|remember|sign up/i)).not.toBeInTheDocument();
  await userEvent.click(screen.getByRole('button', { name: 'Show password' }));
  expect(password).toHaveAttribute('type', 'text');
});
