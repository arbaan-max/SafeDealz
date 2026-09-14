import { Bell, Building2, LayoutDashboard, ShieldCheck, MapPin, Users, CircleUser, Settings, Banknote, Smartphone, Gift, LifeBuoy, BarChart3, ScrollText, Zap } from 'lucide-react';
import { NavLink, Outlet, useLocation } from 'react-router-dom';

import { PageSurface } from '../shared/ui/PageSurface';
import { useAuth } from '../features/auth/AuthContext';
import type { AccountRole } from '../shared/auth/access';

const links: { to: string; label: string; icon: typeof ShieldCheck; roles: AccountRole[] }[] = [
  { to: '/overview', label: 'Overview', icon: LayoutDashboard, roles: ['super_admin', 'admin'] },
  { to: '/chains', label: 'Chains', icon: Building2, roles: ['super_admin', 'admin'] },
  { to: '/branches', label: 'Branches', icon: MapPin, roles: ['super_admin', 'admin'] },
  { to: '/admins', label: 'Admins', icon: ShieldCheck, roles: ['super_admin'] },
  { to: '/managers', label: 'Managers', icon: Users, roles: ['super_admin', 'admin'] },
  { to: '/vendors', label: 'Vendors', icon: CircleUser, roles: ['super_admin', 'admin'] },
  { to: '/auctions', label: 'Auctions & devices', icon: Smartphone, roles: ['super_admin', 'admin'] },
  { to: '/payments', label: 'Payments', icon: Banknote, roles: ['super_admin', 'admin'] },
  { to: '/rewards', label: 'Rewards', icon: Gift, roles: ['super_admin', 'admin'] },
  { to: '/support', label: 'Support', icon: LifeBuoy, roles: ['super_admin', 'admin'] },
  { to: '/reports', label: 'Reports', icon: BarChart3, roles: ['super_admin', 'admin'] },
  { to: '/settings', label: 'Settings', icon: Settings, roles: ['super_admin'] },
  { to: '/audit', label: 'Audit log', icon: ScrollText, roles: ['super_admin', 'admin'] },
];

const workspaceLabel = (pathname: string) => {
  const rules: [string, string][] = [
    ['/notifications', 'Notifications'],
    ['/account', 'Account'],
    ['/settings', 'Settings'],
    ['/audit', 'Audit log'],
    ['/reports', 'Reports'],
    ['/support', 'Support'],
    ['/rewards', 'Rewards'],
    ['/auctions', 'Auctions & devices'],
    ['/payments', 'Payments'],
    ['/vendors', 'Vendors'],
    ['/managers', 'Managers'],
    ['/admins', 'Admins'],
    ['/branches', 'Branches'],
    ['/chains', 'Chains'],
    ['/overview', 'Overview'],
  ];
  return rules.find(([path]) => pathname.startsWith(path))?.[1] ?? 'Workspace';
};

export function AdminShell() {
  const auth = useAuth();
  const location = useLocation();
  const role = auth.account?.role;
  const superAdmin = role === 'super_admin';
  return (
    <PageSurface>
      <div className="admin-app">
        <a className="skip-link" href="#main-content">Skip to main content</a>
        <aside className="admin-nav">
          <NavLink className="wordmark" to="/overview" aria-label="SafeDealz admin home">
            <span className="mark" aria-hidden="true"><Zap size={16} /></span>
            SafeDealz
          </NavLink>
          <nav aria-label="Primary navigation">
            {links.filter((link) => !role || link.roles.includes(role)).map((link) => {
              const Icon = link.icon;
              return <NavLink key={link.to} to={link.to}><Icon size={16} aria-hidden="true" />{link.label}</NavLink>;
            })}
          </nav>
          <NavLink className="admin-profile" to="/account" aria-label="Account">
            <span className="avatar" aria-hidden="true">SD</span>
            <span>{superAdmin ? 'Super Admin' : 'Admin'}<small>{superAdmin ? 'Platform administrator' : 'Assigned-store administrator'}</small></span>
          </NavLink>
        </aside>
        <div className="admin-main">
          <div className="admin-top">
            <span>Workspace / {workspaceLabel(location.pathname)}</span>
            <span className="grow" />
            <span>All chains</span>
            <NavLink className="iconbtn" to="/notifications" aria-label="Notifications"><Bell size={18} /></NavLink>
          </div>
          <main id="main-content" className="admin-body" tabIndex={-1}><Outlet /></main>
        </div>
      </div>
    </PageSurface>
  );
}
