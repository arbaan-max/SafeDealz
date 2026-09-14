import { LayoutDashboard, ShieldCheck } from 'lucide-react';
import { NavLink, Outlet } from 'react-router-dom';

import { PageSurface } from '../shared/ui/PageSurface';
import { useAuth } from '../features/auth/AuthContext';

export function AdminShell() {
  const auth = useAuth();
  return (
    <PageSurface>
      <a className="skip-link" href="#main-content">Skip to main content</a>
      <header className="topbar">
        <NavLink className="brand" to="/foundation" aria-label="SafeDealz admin home">
          <span className="brand-mark" aria-hidden="true"><ShieldCheck size={22} /></span>
          <span><strong>SafeDealz</strong><small>Administration</small></span>
        </NavLink>
        <button className="text-button" type="button" onClick={() => void auth.logout()}>Logout</button>
      </header>
      <div className="app-frame">
        <aside className="sidebar">
          <nav aria-label="Primary navigation">
            <NavLink to="/foundation"><LayoutDashboard size={18} aria-hidden="true" />Foundation</NavLink>
          </nav>
          <p className="sidebar-note">Operational modules become available as their APIs are completed.</p>
        </aside>
        <main id="main-content" className="content" tabIndex={-1}><Outlet /></main>
      </div>
    </PageSurface>
  );
}
