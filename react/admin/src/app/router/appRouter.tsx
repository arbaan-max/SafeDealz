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
import { VendorViewPage } from '../../features/organization/pages/VendorViewPage';
import { VendorWalletPage } from '../../features/organization/pages/VendorWalletPage';
import { SettingsPage } from '../../features/organization/pages/SettingsPage';
import { PaymentListPage } from '../../features/organization/pages/PaymentListPage';
import { PaymentDetailPage } from '../../features/organization/pages/PaymentDetailPage';
import { AuctionListPage } from '../../features/organization/pages/AuctionListPage';
import { AuctionDetailPage } from '../../features/organization/pages/AuctionDetailPage';
import { RewardOverviewPage } from '../../features/organization/pages/RewardOverviewPage';
import { RewardCustomerPage } from '../../features/organization/pages/RewardCustomerPage';
import { RewardPolicyPage } from '../../features/organization/pages/RewardPolicyPage';
import { NotificationHistoryPage } from '../../features/organization/pages/NotificationHistoryPage';
import { SupportListPage } from '../../features/organization/pages/SupportListPage';
import { SupportDetailPage } from '../../features/organization/pages/SupportDetailPage';
import { ReportsPage } from '../../features/organization/pages/ReportsPage';
import { AuditPage } from '../../features/organization/pages/AuditPage';
import { AccountPage } from '../../features/organization/pages/AccountPage';
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
        { path: 'vendors/:id/edit', element: <RoleGate roles={['super_admin', 'admin']}><VendorFormPage /></RoleGate> },
        { path: 'vendors/:id/wallet', element: <RoleGate roles={['super_admin', 'admin']}><VendorWalletPage /></RoleGate> },
        { path: 'vendors/:id', element: <RoleGate roles={['super_admin', 'admin']}><VendorViewPage /></RoleGate> },
        { path: 'payments', element: <RoleGate roles={['super_admin', 'admin']}><PaymentListPage /></RoleGate> },
        { path: 'payments/:id', element: <RoleGate roles={['super_admin', 'admin']}><PaymentDetailPage /></RoleGate> },
        { path: 'auctions', element: <RoleGate roles={['super_admin', 'admin']}><AuctionListPage /></RoleGate> },
        { path: 'auctions/:id', element: <RoleGate roles={['super_admin', 'admin']}><AuctionDetailPage /></RoleGate> },
        { path: 'rewards', element: <RoleGate roles={['super_admin', 'admin']}><RewardOverviewPage /></RoleGate> },
        { path: 'rewards/policy', element: <RoleGate roles={['super_admin', 'admin']}><RewardPolicyPage /></RoleGate> },
        { path: 'rewards/customers/:phone', element: <RoleGate roles={['super_admin', 'admin']}><RewardCustomerPage /></RoleGate> },
        { path: 'notifications', element: <RoleGate roles={['super_admin', 'admin']}><NotificationHistoryPage /></RoleGate> },
        { path: 'support', element: <RoleGate roles={['super_admin', 'admin']}><SupportListPage /></RoleGate> },
        { path: 'support/:id', element: <RoleGate roles={['super_admin', 'admin']}><SupportDetailPage /></RoleGate> },
        { path: 'reports', element: <RoleGate roles={['super_admin', 'admin']}><ReportsPage /></RoleGate> },
        { path: 'audit', element: <RoleGate roles={['super_admin', 'admin']}><AuditPage /></RoleGate> },
        { path: 'account', element: <RoleGate roles={['super_admin', 'admin']}><AccountPage /></RoleGate> },
        { path: 'settings', element: <RoleGate roles={['super_admin']}><SettingsPage /></RoleGate> },
      ] },
    ],
  },
  { path: '/login', element: <LoginPage /> },
  { path: '*', element: <NotFoundPage /> },
]);
