import { render, screen } from '@testing-library/react';
import { PageSurface } from './PageSurface';

test('owns the semantic application background override', () => {
  render(<PageSurface background="rgb(1, 2, 3)"><span>Page</span></PageSurface>);
  expect(screen.getByText('Page').parentElement).toHaveStyle({ '--app-background': 'rgb(1, 2, 3)' });
});
