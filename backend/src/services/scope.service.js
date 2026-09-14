import { listAssignments } from '../repositories/store-assignment.repository.js';
import { ApiError } from '../utils/api-error.js';

export const loadScope = async (account) => {
  if (account.role === 'super_admin') return { all: true, branchIds: [] };
  const kind = account.role === 'admin' ? 'admin' : account.role === 'store_manager' ? 'store_manager' : 'vendor';
  const rows = await listAssignments({ accountId: account.id, kind, active: true });
  return { all: false, branchIds: rows.map((row) => String(row.branchId)) };
};

export const assertBranchInScope = (scope, branchId) => {
  if (scope.all) return;
  if (!scope.branchIds.includes(String(branchId))) {
    throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This store is outside your assigned access.');
  }
};

export const scopedBranchFilter = (scope) => (scope.all ? {} : { _id: { $in: scope.branchIds } });
