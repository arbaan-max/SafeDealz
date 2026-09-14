import { type PropsWithChildren } from 'react';
import { RequireAccess } from '../../../shared/auth/RequireAccess';
import { type AccountRole } from '../../../shared/auth/access';
import { useAuth } from '../../auth/AuthContext';

export function RoleGate({ roles, children }: PropsWithChildren<{ roles: readonly AccountRole[] }>) {
  const auth = useAuth();
  const context = auth.account ? { role: auth.account.role, permissions: new Set<string>() } : null;
  return <RequireAccess context={context} required={{ roles }}>{children}</RequireAccess>;
}
