import { type PropsWithChildren } from 'react';
import { type AccessContext, type RouteAccess, canAccess } from './access';

type RequireAccessProps = PropsWithChildren<{ context: AccessContext | null; required: RouteAccess }>;

export function RequireAccess({ context, required, children }: RequireAccessProps) {
  if (!canAccess(context, required)) {
    return <section role="alert" aria-labelledby="access-denied"><h1 id="access-denied">Access denied</h1><p>Your account does not have permission to view this page.</p></section>;
  }
  return children;
}
