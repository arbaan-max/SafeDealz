import { StoreAssignment } from '../models/store-assignment.model.js';

export const listAssignments = (filter) => StoreAssignment.find(filter);
export const findAssignment = (filter) => StoreAssignment.findOne(filter);
export const upsertAssignment = async ({ accountId, branchId, kind }) => StoreAssignment.findOneAndUpdate(
  { accountId, branchId, kind },
  { $set: { active: true, assignedAt: new Date(), revokedAt: null } },
  { upsert: true, returnDocument: 'after', setDefaultsOnInsert: true },
);
export const revokeAssignment = (id) => StoreAssignment.updateOne(
  { _id: id, active: true },
  { $set: { active: false, revokedAt: new Date() } },
);
export const revokeAssignmentsForAccount = (accountId, kind, keepBranchIds = []) => StoreAssignment.updateMany(
  { accountId, kind, active: true, ...(keepBranchIds.length ? { branchId: { $nin: keepBranchIds } } : {}) },
  { $set: { active: false, revokedAt: new Date() } },
);
export const countAssignments = (filter) => StoreAssignment.countDocuments(filter);
