import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { DataTable } from './ResourceKit';

test('paginates list rows 40 at a time with previous and next', async () => {
  const user = userEvent.setup();
  const rows = Array.from({ length: 41 }, (_, index) => [`Row ${index + 1}`]);
  render(<DataTable headers={['Name']} empty="No rows." rows={rows} />);
  expect(screen.getByText('Row 1')).toBeInTheDocument();
  expect(screen.queryByText('Row 41')).not.toBeInTheDocument();
  expect(screen.getByText('Page 1 of 2 · 40 of 41 items')).toBeInTheDocument();
  expect(screen.getByRole('button', { name: 'Previous' })).toBeDisabled();
  await user.click(screen.getByRole('button', { name: 'Next' }));
  expect(screen.getByText('Row 41')).toBeInTheDocument();
  expect(screen.queryByText('Row 1')).not.toBeInTheDocument();
  expect(screen.getByText('Page 2 of 2 · 1 of 41 items')).toBeInTheDocument();
  expect(screen.getByRole('button', { name: 'Next' })).toBeDisabled();
});
