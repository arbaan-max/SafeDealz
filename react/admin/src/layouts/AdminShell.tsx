import { Building2, LayoutDashboard, ShieldCheck, MapPin } from 'lucide-react';
import { NavLink, Outlet } from 'react-router-dom';

import { PageSurface } from '../shared/ui/PageSurface';
import { useAuth } from '../features/auth/AuthContext';
import type { AccountRole } from '../shared/auth/access';

const links: { to: string; label: string; icon: typeof ShieldCheck; roles: AccountRole[] }[] = [
  { to: '/overview', label: 'Overview', icon: LayoutDashboard, roles: ['super_admin', 'admin'] },
  { to: '/chains', label: 'Chains', icon: Building2, roles: ['super_admin', 'admin'] },
  { to: '/branches', label: 'Branches', icon: MapPin, roles: ['super_admin', 'admin'] },
  { to: '/admins', label: 'Admins', icon: ShieldCheck, roles: ['super_admin'] },
];

export function AdminShell() {
  const auth = useAuth();
  const role = auth.account?.role;
  return (
    <PageSurface>
      <a className="skip-link" href="#main-content">Skip to main content</a>
      <header className="topbar">
        <NavLink className="brand" to="/overview" aria-label="SafeDealz admin home">
          <span className="brand-mark" aria-hidden="true"><ShieldCheck size={22} /></span>
          <span><strong>SafeDealz</strong><small>Administration</small></span>
        </NavLink>
        <button className="text-button" type="button" onClick={() => void auth.logout()}>Logout</button>
      </header>
      <div className="app-frame">
        <aside className="sidebar">
          <nav aria-label="Primary navigation">
            {links.filter((link) => !role || link.roles.includes(role)).map((link) => {
              const Icon = link.icon;
              return <NavLink key={link.to} to={link.to}><Icon size={18} aria-hidden="true" />{link.label}</NavLink>;
            })}
          </nav>
          <p className="sidebar-note">{role === 'admin' ? 'Menus and records stay limited to assigned stores.' : 'Only Super Admin can create Admins and change store assignments.'}</p>
        </aside>
        <main id="main-content" className="content" tabIndex={-1}><Outlet /></main>
      </div>
    </PageSurface>
  );
}
