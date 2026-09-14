import { render, screen } from '@testing-library/react';
import { createMemoryRouter, RouterProvider } from 'react-router-dom';
import { axe } from 'vitest-axe';
import { AdminShell } from './AdminShell';
import { AppProviders } from '../app/providers/AppProviders';

function renderShell() {
  const router = createMemoryRouter([{ path: '/', element: <AdminShell />, children: [{ index: true, element: <h1>Content</h1> }] }]);
  return render(<AppProviders><RouterProvider router={router} /></AppProviders>);
}

test('renders accessible navigation and shared page surface', async () => {
  const view = renderShell();
  expect(screen.getByRole('navigation', { name: /primary/i })).toBeInTheDocument();
  expect(screen.getByRole('link', { name: /skip to main/i })).toHaveAttribute('href', '#main-content');
  const results = await axe(view.container, { rules: { 'color-contrast': { enabled: false } } });
  expect(results.violations).toEqual([]);
});
