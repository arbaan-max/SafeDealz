import { createBrowserRouter, Navigate } from 'react-router-dom';
import { AdminShell } from '../../layouts/AdminShell';
import { OverviewPage } from '../../features/organization/pages/OverviewPage';
import { ChainListPage } from '../../features/organization/pages/ChainListPage';
import { ChainFormPage } from '../../features/organization/pages/ChainFormPage';
import { BranchListPage } from '../../features/organization/pages/BranchListPage';
import { BranchFormPage } from '../../features/organization/pages/BranchFormPage';
import { AdminListPage } from '../../features/organization/pages/AdminListPage';
import { AdminFormPage } from '../../features/organization/pages/AdminFormPage';
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
      ] },
    ],
  },
  { path: '/login', element: <LoginPage /> },
  { path: '*', element: <NotFoundPage /> },
]);
