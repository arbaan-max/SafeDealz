import { Link } from 'react-router-dom';

export function NotFoundPage() {
  return <main className="state-page"><div><p className="eyebrow">404</p><h1>Page not found</h1><p className="lede">This administration page is unavailable.</p><p><Link to="/foundation">Return to foundation</Link></p></div></main>;
}
