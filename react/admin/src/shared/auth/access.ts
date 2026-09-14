export const accountRoles = ['super_admin', 'admin', 'store_manager', 'vendor'] as const;
export type AccountRole = (typeof accountRoles)[number];

export type AccessContext = Readonly<{ role: AccountRole; permissions: ReadonlySet<string> }>;
export type RouteAccess = Readonly<{ roles: readonly AccountRole[]; permissions?: readonly string[] }>;

export function canAccess(context: AccessContext | null, required: RouteAccess): boolean {
  if (!context || !required.roles.includes(context.role)) return false;
  return (required.permissions ?? []).every((permission) => context.permissions.has(permission));
}
