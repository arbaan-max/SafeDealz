import { createBrowserRouter, Navigate } from 'react-router-dom';

import { AdminShell } from '../../layouts/AdminShell';
import { FoundationPage } from '../../features/foundation/pages/FoundationPage';
import { RequireSession } from '../../features/auth/components/RequireSession';
import { LoginPage } from '../../features/auth/pages/LoginPage';
import { NotFoundPage } from '../../shared/ui/NotFoundPage';

export const appRouter = createBrowserRouter([
  {
    path: '/',
    element: <RequireSession />,
    children: [
      { element: <AdminShell />, children: [
        { index: true, element: <Navigate to="/foundation" replace /> },
        { path: 'foundation', element: <FoundationPage /> },
      ] },
    ],
  },
  { path: '/login', element: <LoginPage /> },
  { path: '*', element: <NotFoundPage /> },
]);
