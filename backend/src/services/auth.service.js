import { env } from '../config/env.js';
import { findAccountById, findAccountForLogin, findActiveAccountById } from '../repositories/account.repository.js';
import { loadScope } from './scope.service.js';
import { publicAccount } from '../utils/presenters.js';
import { createAuditEvent } from '../repositories/audit-event.repository.js';
import { createSession, findActiveSessionByFamily, findSessionById, findSessionForRefresh, listSessionsForAccount, revokeAccountSessions, revokeSessionFamily, rotateSession } from '../repositories/session.repository.js';
import { ApiError } from '../utils/api-error.js';
import { clearAccountFailures, assertLoginAllowed, recordLoginFailure } from './login-throttle.service.js';
import { digestToken, hashPassword, normalizeEmail, opaqueId, opaqueToken, signAccessToken, verifyPassword } from '../utils/auth-crypto.js';
import { requireObjectId } from '../utils/ids.js';

const invalidCredentials = () => new ApiError(401, 'INVALID_CREDENTIALS', 'Invalid email or password.');
const dummyPasswordHash = hashPassword('SafeDealz timing-only password 42!');
const refreshExpiry = () => new Date(Date.now() + env.refreshTokenDays * 86400000);
const splitRefresh = (token) => {
  const [familyId, secret, extra] = String(token ?? '').split('.');
  if (!familyId || !secret || extra) throw new ApiError(401, 'SESSION_INVALID', 'Session is invalid or expired.');
  return { familyId, secret };
};
const issueFor = async (account, clientType) => {
  const familyId = opaqueId();
  const secret = opaqueToken();
  const expiresAt = refreshExpiry();
  await createSession({ accountId: account.id, familyId, refreshDigest: digestToken(secret), clientType, expiresAt });
  return {
    accessToken: await signAccessToken({ accountId: account.id, role: account.role, familyId }),
    refreshToken: `${familyId}.${secret}`,
    expiresIn: env.accessTokenMinutes * 60,
    account: publicAccount(account),
  };
};

export const login = async ({ email, password, expectedRole, clientType, ip }) => {
  const normalized = normalizeEmail(email);
  await assertLoginAllowed(normalized, ip);
  const account = await findAccountForLogin(normalized);
  const valid = account ? await verifyPassword(account.passwordHash, password) : await verifyPassword(await dummyPasswordHash, password);
  const allowedRoles = expectedRole === 'admin_portal' ? ['super_admin', 'admin'] : [expectedRole];
  if (!account || !valid || !allowedRoles.includes(account.role)) {
    await recordLoginFailure(normalized, ip);
    throw invalidCredentials();
  }
  if (!account.active) throw new ApiError(401, 'ACCOUNT_INACTIVE', 'Your account is inactive. Contact your administrator.');
  await clearAccountFailures(normalized);
  return issueFor(account, clientType);
};

export const refresh = async (refreshToken, clientType) => {
  const { familyId, secret } = splitRefresh(refreshToken);
  const session = await findSessionForRefresh(familyId);
  if (!session || session.revokedAt || session.expiresAt <= new Date() || session.clientType !== clientType) {
    throw new ApiError(401, 'SESSION_INVALID', 'Session is invalid or expired.');
  }
  const account = await findActiveAccountById(session.accountId);
  if (!account || !account.active) {
    await revokeSessionFamily(familyId, 'account_inactive');
    throw new ApiError(401, 'ACCOUNT_INACTIVE', 'Your account is inactive. Contact your administrator.');
  }
  const priorDigest = digestToken(secret);
  if (session.refreshDigest !== priorDigest) {
    await revokeSessionFamily(familyId, 'refresh_reuse');
    throw new ApiError(401, 'SESSION_REUSED', 'Session has been revoked.');
  }
  const nextSecret = opaqueToken();
  const rotated = await rotateSession(session.id, priorDigest, digestToken(nextSecret), refreshExpiry());
  if (!rotated) {
    await revokeSessionFamily(familyId, 'refresh_reuse');
    throw new ApiError(401, 'SESSION_REUSED', 'Session has been revoked.');
  }
  return {
    accessToken: await signAccessToken({ accountId: account.id, role: account.role, familyId }),
    refreshToken: `${familyId}.${nextSecret}`,
    expiresIn: env.accessTokenMinutes * 60,
    account: publicAccount(account),
  };
};

export const logout = async (familyId) => { if (familyId) await revokeSessionFamily(familyId, 'logout'); };

export const getSessionAccount = async (accountId, familyId) => {
  const [account, session] = await Promise.all([findActiveAccountById(accountId), findActiveSessionByFamily(familyId)]);
  if (!account || !account.active) {
    if (session) await revokeSessionFamily(familyId, 'account_inactive');
    throw new ApiError(401, 'ACCOUNT_INACTIVE', 'Your account is inactive. Contact your administrator.');
  }
  if (!session || String(session.accountId) !== String(accountId)) throw new ApiError(401, 'SESSION_INVALID', 'Session is invalid or expired.');
  const scope = await loadScope({ id: account.id, role: account.role });
  return publicAccount(account, { assignedBranchIds: scope.all ? [] : scope.branchIds, allStores: scope.all });
};

export const listMySessions = async (actor, currentFamilyId) => {
  const rows = await listSessionsForAccount(actor.id);
  return rows.map((row) => ({
    id: String(row.id),
    clientType: row.clientType,
    createdAt: row.createdAt,
    expiresAt: row.expiresAt,
    revokedAt: row.revokedAt || null,
    current: row.familyId === currentFamilyId,
  }));
};

export const revokeMySession = async (actor, id, currentFamilyId) => {
  const row = await findSessionById(requireObjectId(id, 'session id'));
  if (!row || String(row.accountId) !== String(actor.id)) throw new ApiError(404, 'NOT_FOUND', 'Session was not found.');
  if (row.familyId === currentFamilyId) throw new ApiError(409, 'CURRENT_SESSION', 'Logout to end the current session.');
  await revokeSessionFamily(row.familyId, 'user_revoke');
  return { id: String(row.id), revoked: true };
};

export const changePassword = async (actor, body) => {
  const account = await findAccountById(actor.id, { withPassword: true });
  if (!account) throw new ApiError(404, 'NOT_FOUND', 'Account was not found.');
  const currentPassword = String(body.currentPassword || '');
  const nextPassword = String(body.newPassword || '');
  if (nextPassword.length < 12) throw new ApiError(400, 'VALIDATION_ERROR', 'Password must be at least 12 characters.');
  if (!await verifyPassword(account.passwordHash, currentPassword)) {
    throw new ApiError(401, 'INVALID_CREDENTIALS', 'Invalid email or password.');
  }
  account.passwordHash = await hashPassword(nextPassword);
  await account.save();
  await revokeAccountSessions(account.id, 'password_changed');
  await createAuditEvent({
    actorId: actor.id, actorRole: actor.role, action: 'account.password_changed', entityType: 'account',
    entityId: String(actor.id), metadata: {},
  });
  return { revokedSessions: true };
};
