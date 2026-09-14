import { Session } from '../models/session.model.js';

export const createSession = (attributes) => Session.create(attributes);
export const findSessionForRefresh = (familyId) => Session.findOne({ familyId }).select('+refreshDigest');
export const findActiveSessionByFamily = (familyId) => Session.findOne({ familyId, revokedAt: null });
export const rotateSession = (sessionId, priorDigest, nextDigest, expiresAt) => Session.findOneAndUpdate(
  { _id: sessionId, refreshDigest: priorDigest, revokedAt: null, expiresAt: { $gt: new Date() } },
  { $set: { refreshDigest: nextDigest, expiresAt } }, { returnDocument: 'after' },
);
export const revokeSessionFamily = (familyId, reason) => Session.updateOne(
  { familyId, revokedAt: null }, { $set: { revokedAt: new Date(), revokeReason: reason } },
);
export const revokeAccountSessions = (accountId, reason) => Session.updateMany(
  { accountId, revokedAt: null }, { $set: { revokedAt: new Date(), revokeReason: reason } },
);
