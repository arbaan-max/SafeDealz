import { createBrowserRouter, Navigate } from 'react-router-dom';
import { AdminShell } from '../../layouts/AdminShell';
import { OverviewPage } from '../../features/organization/pages/OverviewPage';
import { ChainListPage } from '../../features/organization/pages/ChainListPage';
import { ChainFormPage } from '../../features/organization/pages/ChainFormPage';
import { BranchListPage } from '../../features/organization/pages/BranchListPage';
import { BranchFormPage } from '../../features/organization/pages/BranchFormPage';
import { AdminListPage } from '../../features/organization/pages/AdminListPage';
import { AdminFormPage } from '../../features/organization/pages/AdminFormPage';
import { ManagerListPage } from '../../features/organization/pages/ManagerListPage';
import { ManagerFormPage } from '../../features/organization/pages/ManagerFormPage';
import { VendorListPage } from '../../features/organization/pages/VendorListPage';
import { VendorFormPage } from '../../features/organization/pages/VendorFormPage';
import { VendorWalletPage } from '../../features/organization/pages/VendorWalletPage';
import { RequireSession } from '../../features/auth/components/RequireSession';
import { RoleGate } from '../../features/organization/components/RoleGate';
import { LoginPage } from '../../features/auth/pages/LoginPage';
import { NotFoundPage } from '../../shared/ui/NotFoundPage';

export const appRouter = createBrowserRouter([
  {
    path: '/',
    element: <RequireSession />,
    children: [
      { element: <AdminShell />, children: [
        { index: true, element: <Navigate to="/overview" replace /> },
        { path: 'foundation', element: <Navigate to="/overview" replace /> },
        { path: 'overview', element: <OverviewPage /> },
        { path: 'chains', element: <ChainListPage /> },
        { path: 'chains/new', element: <RoleGate roles={['super_admin']}><ChainFormPage /></RoleGate> },
        { path: 'chains/:id', element: <RoleGate roles={['super_admin']}><ChainFormPage /></RoleGate> },
        { path: 'branches', element: <BranchListPage /> },
        { path: 'branches/new', element: <RoleGate roles={['super_admin']}><BranchFormPage /></RoleGate> },
        { path: 'branches/:id', element: <BranchFormPage /> },
        { path: 'admins', element: <RoleGate roles={['super_admin']}><AdminListPage /></RoleGate> },
        { path: 'admins/new', element: <RoleGate roles={['super_admin']}><AdminFormPage /></RoleGate> },
        { path: 'admins/:id', element: <RoleGate roles={['super_admin']}><AdminFormPage /></RoleGate> },
        { path: 'managers', element: <RoleGate roles={['super_admin', 'admin']}><ManagerListPage /></RoleGate> },
        { path: 'managers/new', element: <RoleGate roles={['super_admin', 'admin']}><ManagerFormPage /></RoleGate> },
        { path: 'managers/:id', element: <RoleGate roles={['super_admin', 'admin']}><ManagerFormPage /></RoleGate> },
        { path: 'vendors', element: <RoleGate roles={['super_admin', 'admin']}><VendorListPage /></RoleGate> },
        { path: 'vendors/new', element: <RoleGate roles={['super_admin', 'admin']}><VendorFormPage /></RoleGate> },
        { path: 'vendors/:id', element: <RoleGate roles={['super_admin', 'admin']}><VendorFormPage /></RoleGate> },
        { path: 'vendors/:id/wallet', element: <RoleGate roles={['super_admin', 'admin']}><VendorWalletPage /></RoleGate> },
      ] },
    ],
  },
  { path: '/login', element: <LoginPage /> },
  { path: '*', element: <NotFoundPage /> },
]);
