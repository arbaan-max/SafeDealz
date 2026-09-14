import { Navigate, Outlet, useLocation } from 'react-router-dom';
import { useAuth } from '../AuthContext';

export function RequireSession() {
  const auth = useAuth();
  const location = useLocation();
  if (auth.status === 'checking') return <main className="auth-status" aria-live="polite">Checking your session…</main>;
  if (auth.status === 'anonymous') return <Navigate to="/login" replace state={{ from: location }} />;
  return <Outlet />;
}
