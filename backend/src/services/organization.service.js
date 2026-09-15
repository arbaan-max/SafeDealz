import { createAuditEvent } from '../repositories/audit-event.repository.js';
import { createAccount, findAccountByEmail, findAccountById, listAccounts, saveAccount } from '../repositories/account.repository.js';
import { countBranches, createBranch, findBranchById, listBranches, saveBranch } from '../repositories/branch.repository.js';
import { createChain, findChainById, listChains, saveChain } from '../repositories/chain.repository.js';
import { countAssignments, listAssignments, revokeAssignmentsForAccount, upsertAssignment } from '../repositories/store-assignment.repository.js';
import { revokeAccountSessions } from '../repositories/session.repository.js';
import { hashPassword, normalizeEmail } from '../utils/auth-crypto.js';
import { ApiError } from '../utils/api-error.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { publicAccount, publicAssignedStore, publicBranch, publicChain } from '../utils/presenters.js';
import { assertBranchInScope, loadScope, scopedBranchFilter } from './scope.service.js';

const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
const ifscPattern = /^[A-Z]{4}0[A-Z0-9]{6}$/;
const requiredText = (value, message) => {
  const text = typeof value === 'string' ? value.trim() : '';
  if (!text) throw new ApiError(400, 'VALIDATION_ERROR', message);
  return text;
};
const optionalText = (value) => (typeof value === 'string' ? value.trim() : '');
const requirePassword = (value) => {
  if (typeof value !== 'string' || value.length < 12) throw new ApiError(400, 'VALIDATION_ERROR', 'Password must be at least 12 characters.');
  return value;
};
const requireEmail = (value) => {
  const email = normalizeEmail(requiredText(value, 'A valid email is required.'));
  if (!emailPattern.test(email)) throw new ApiError(400, 'VALIDATION_ERROR', 'A valid email is required.');
  return email;
};
const audit = (actor, action, entityType, entityId, metadata = {}, storeId) => createAuditEvent({
  actorId: actor.id, actorRole: actor.role, action, entityType, entityId: String(entityId), metadata, storeId,
});
const uniqueOrConflict = (error, message) => {
  if (duplicateError(error)) throw new ApiError(409, 'CONFLICT', message);
  throw error;
};
const assertAlive = (doc, message) => {
  if (!doc || doc.isDeleted) throw new ApiError(404, 'NOT_FOUND', message);
};
const markDeleted = async (doc, saveFn, extra = {}) => {
  doc.isDeleted = true;
  Object.assign(doc, extra);
  await saveFn(doc);
};

export const listVisibleChains = async (actor) => {
  const scope = await loadScope(actor);
  if (scope.all) {
    const chains = await listChains();
    const counts = await Promise.all(chains.map(async (chain) => ({ ...publicChain(chain), branchCount: await countBranches({ chainId: chain.id }) })));
    return counts;
  }
  const branches = await listBranches({ _id: { $in: scope.branchIds } });
  const chainIds = [...new Set(branches.map((branch) => String(branch.chainId)))];
  const chains = await listChains({ _id: { $in: chainIds } });
  return chains.map((chain) => ({
    ...publicChain(chain),
    branchCount: branches.filter((branch) => String(branch.chainId) === String(chain.id)).length,
  }));
};

export const createVisibleChain = async (actor, body) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can create chains.');
  try {
    const chain = await createChain({
      name: requiredText(body.name, 'Chain name is required.'),
      code: requiredText(body.code, 'Chain code is required.').toUpperCase(),
      contactName: optionalText(body.contactName),
      contactEmail: optionalText(body.contactEmail).toLowerCase(),
      contactPhone: optionalText(body.contactPhone),
      active: body.active !== false,
    });
    await audit(actor, 'chain.created', 'chain', chain.id, { code: chain.code });
    return publicChain(chain);
  } catch (error) { uniqueOrConflict(error, 'A chain with this code already exists.'); }
};

export const updateVisibleChain = async (actor, id, body) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can update chains.');
  const chain = await findChainById(requireObjectId(id, 'chain id'));
  assertAlive(chain, 'Chain was not found.');
  if (body.isDeleted === true) {
    await markDeleted(chain, saveChain);
    await audit(actor, 'chain.deleted', 'chain', chain.id, { isDeleted: true });
    return publicChain(chain);
  }
  if (body.name) chain.name = requiredText(body.name, 'Chain name is required.');
  if (body.code) chain.code = requiredText(body.code, 'Chain code is required.').toUpperCase();
  if (body.contactName !== undefined) chain.contactName = optionalText(body.contactName);
  if (body.contactEmail !== undefined) chain.contactEmail = optionalText(body.contactEmail).toLowerCase();
  if (body.contactPhone !== undefined) chain.contactPhone = optionalText(body.contactPhone);
  if (typeof body.active === 'boolean') chain.active = body.active;
  try { await saveChain(chain); } catch (error) { uniqueOrConflict(error, 'A chain with this code already exists.'); }
  await audit(actor, 'chain.updated', 'chain', chain.id, { active: chain.active });
  return publicChain(chain);
};

export const listVisibleBranches = async (actor) => {
  const scope = await loadScope(actor);
  const branches = await listBranches(scopedBranchFilter(scope), { withAccount: actor.role === 'super_admin' || actor.role === 'store_manager' });
  return branches.map((branch) => publicBranch(branch, { revealAccount: actor.role === 'super_admin' }));
};

export const createVisibleBranch = async (actor, body) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can create branches.');
  const chain = await findChainById(requireObjectId(body.chainId, 'chain id'));
  assertAlive(chain, 'Chain was not found.');
  const accountNumber = requiredText(body.accountNumber, 'Business account number is required.');
  const ifsc = requiredText(body.ifsc, 'IFSC is required.').toUpperCase();
  if (!ifscPattern.test(ifsc)) throw new ApiError(400, 'VALIDATION_ERROR', 'Enter a valid IFSC.');
  try {
    const branch = await createBranch({
      chainId: chain.id,
      name: requiredText(body.name, 'Branch name is required.'),
      code: requiredText(body.code, 'Branch code is required.').toUpperCase(),
      address: optionalText(body.address),
      city: optionalText(body.city),
      contactName: optionalText(body.contactName),
      contactPhone: optionalText(body.contactPhone),
      beneficiaryName: requiredText(body.beneficiaryName, 'Beneficiary name is required.'),
      accountNumber,
      ifsc,
      active: body.active !== false,
    });
    await audit(actor, 'branch.created', 'branch', branch.id, { chainId: String(chain.id) }, branch.id);
    return publicBranch(await findBranchById(branch.id, { withAccount: true }), { revealAccount: true });
  } catch (error) { uniqueOrConflict(error, 'A branch with this name or code already exists in the chain.'); }
};

export const updateVisibleBranch = async (actor, id, body) => {
  const scope = await loadScope(actor);
  const branch = await findBranchById(requireObjectId(id, 'branch id'), { withAccount: true });
  assertAlive(branch, 'Branch was not found.');
  assertBranchInScope(scope, branch.id);
  if (actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can edit branch records.');
  }
  if (body.isDeleted === true) {
    await markDeleted(branch, saveBranch);
    await audit(actor, 'branch.deleted', 'branch', branch.id, { isDeleted: true }, branch.id);
    return publicBranch(branch, { revealAccount: true });
  }
  if (body.chainId) {
    const chain = await findChainById(requireObjectId(body.chainId, 'chain id'));
    assertAlive(chain, 'Chain was not found.');
    branch.chainId = chain.id;
  }
  if (body.name) branch.name = requiredText(body.name, 'Branch name is required.');
  if (body.code) branch.code = requiredText(body.code, 'Branch code is required.').toUpperCase();
  if (body.address !== undefined) branch.address = optionalText(body.address);
  if (body.city !== undefined) branch.city = optionalText(body.city);
  if (body.contactName !== undefined) branch.contactName = optionalText(body.contactName);
  if (body.contactPhone !== undefined) branch.contactPhone = optionalText(body.contactPhone);
  if (body.beneficiaryName) branch.beneficiaryName = requiredText(body.beneficiaryName, 'Beneficiary name is required.');
  if (body.accountNumber) branch.accountNumber = requiredText(body.accountNumber, 'Business account number is required.');
  if (body.ifsc) {
    const ifsc = requiredText(body.ifsc, 'IFSC is required.').toUpperCase();
    if (!ifscPattern.test(ifsc)) throw new ApiError(400, 'VALIDATION_ERROR', 'Enter a valid IFSC.');
    branch.ifsc = ifsc;
  }
  if (typeof body.active === 'boolean') branch.active = body.active;
  try { await saveBranch(branch); } catch (error) { uniqueOrConflict(error, 'A branch with this name or code already exists in the chain.'); }
  await audit(actor, 'branch.updated', 'branch', branch.id, { bankChanged: Boolean(body.accountNumber || body.ifsc) }, branch.id);
  return publicBranch(branch, { revealAccount: actor.role === 'super_admin' });
};

const replaceAssignments = async ({ accountId, kind, branchIds, actor }) => {
  const uniqueIds = [...new Set((branchIds ?? []).map((id) => String(id)))];
  const branches = await Promise.all(uniqueIds.map(async (id) => {
    const branch = await findBranchById(requireObjectId(id, 'branch id'));
    if (!branch) throw new ApiError(400, 'VALIDATION_ERROR', 'Every assigned branch must exist.');
    return branch;
  }));
  await revokeAssignmentsForAccount(accountId, kind, branches.map((branch) => branch.id));
  await Promise.all(branches.map((branch) => upsertAssignment({ accountId, branchId: branch.id, kind })));
  await audit(actor, `${kind}.assignments.updated`, 'account', accountId, { branchIds: uniqueIds });
  return uniqueIds;
};

export const listAdmins = async (actor) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can manage Admins.');
  const accounts = await listAccounts({ role: 'admin' });
  const assignments = await listAssignments({ kind: 'admin', active: true });
  return accounts.map((account) => publicAccount(account, {
    assignedBranchIds: assignments.filter((row) => String(row.accountId) === String(account.id)).map((row) => String(row.branchId)),
  }));
};

export const createAdmin = async (actor, body) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can create Admins.');
  if (await findAccountByEmail(requireEmail(body.email))) throw new ApiError(409, 'CONFLICT', 'An account with this email already exists.');
  const account = await createAccount({
    email: requireEmail(body.email),
    passwordHash: await hashPassword(requirePassword(body.password)),
    role: 'admin',
    displayName: requiredText(body.displayName, 'Name is required.'),
    phone: optionalText(body.phone),
    active: body.active !== false,
  });
  const assignedBranchIds = await replaceAssignments({ accountId: account.id, kind: 'admin', branchIds: body.assignedBranchIds ?? [], actor });
  await audit(actor, 'admin.created', 'account', account.id, { assignedBranchIds });
  return publicAccount(account, { assignedBranchIds });
};

export const updateAdmin = async (actor, id, body) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can manage Admins.');
  const account = await findAccountById(requireObjectId(id, 'admin id'));
  assertAlive(account, 'Admin was not found.');
  if (account.role !== 'admin') throw new ApiError(404, 'NOT_FOUND', 'Admin was not found.');
  if (body.isDeleted === true) {
    account.active = false;
    await markDeleted(account, saveAccount);
    await revokeAccountSessions(account.id, 'deleted');
    await audit(actor, 'admin.deleted', 'account', account.id, { isDeleted: true });
    const assignedBranchIds = (await listAssignments({ accountId: account.id, kind: 'admin', active: true })).map((row) => String(row.branchId));
    return publicAccount(account, { assignedBranchIds });
  }
  if (body.displayName) account.displayName = requiredText(body.displayName, 'Name is required.');
  if (body.phone !== undefined) account.phone = optionalText(body.phone);
  if (typeof body.active === 'boolean' && body.active !== account.active) {
    account.active = body.active;
    if (!account.active) await revokeAccountSessions(account.id, 'deactivated');
  }
  if (body.password) account.passwordHash = await hashPassword(requirePassword(body.password));
  await saveAccount(account);
  let assignedBranchIds;
  if (Array.isArray(body.assignedBranchIds)) {
    assignedBranchIds = await replaceAssignments({ accountId: account.id, kind: 'admin', branchIds: body.assignedBranchIds, actor });
  } else {
    assignedBranchIds = (await listAssignments({ accountId: account.id, kind: 'admin', active: true })).map((row) => String(row.branchId));
  }
  await audit(actor, 'admin.updated', 'account', account.id, { active: account.active, assignedBranchIds });
  return publicAccount(account, { assignedBranchIds });
};

export const createStaffAccount = async (actor, { role, kind, body, singleBranch = false }) => {
  const scope = await loadScope(actor);
  if (!['super_admin', 'admin'].includes(actor.role)) throw new ApiError(403, 'FORBIDDEN', 'You cannot manage this account type.');
  const branchIds = (singleBranch ? [body.branchId] : (body.assignedBranchIds ?? [])).filter(Boolean);
  if (!branchIds.length) throw new ApiError(400, 'VALIDATION_ERROR', 'At least one assigned branch is required.');
  for (const branchId of branchIds) assertBranchInScope(scope, branchId);
  if (await findAccountByEmail(requireEmail(body.email))) throw new ApiError(409, 'CONFLICT', 'An account with this email already exists.');
  const account = await createAccount({
    email: requireEmail(body.email),
    passwordHash: await hashPassword(requirePassword(body.password)),
    role,
    displayName: requiredText(body.displayName, 'Name is required.'),
    phone: optionalText(body.phone),
    active: body.active !== false,
  });
  const assignedBranchIds = await replaceAssignments({ accountId: account.id, kind, branchIds, actor });
  await audit(actor, `${role}.created`, 'account', account.id, { assignedBranchIds });
  return { account, assignedBranchIds };
};

export const updateStaffAccount = async (actor, { role, kind, id, body, singleBranch = false }) => {
  const scope = await loadScope(actor);
  const account = await findAccountById(requireObjectId(id, 'account id'));
  assertAlive(account, 'Account was not found.');
  if (account.role !== role) throw new ApiError(404, 'NOT_FOUND', 'Account was not found.');
  const current = (await listAssignments({ accountId: account.id, kind, active: true })).map((row) => String(row.branchId));
  if (!scope.all && !current.some((branchId) => scope.branchIds.includes(branchId))) {
    throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This account is outside your assigned access.');
  }
  if (body.displayName) account.displayName = requiredText(body.displayName, 'Name is required.');
  if (body.phone !== undefined) account.phone = optionalText(body.phone);
  if (body.email) {
    const email = requireEmail(body.email);
    if (email !== account.email) {
      const existing = await findAccountByEmail(email);
      if (existing && String(existing.id) !== String(account.id)) {
        throw new ApiError(409, 'CONFLICT', 'An account with this email already exists.');
      }
      account.email = email;
    }
  }
  if (body.isDeleted === true) {
    if (actor.role !== 'super_admin' && role === 'vendor') {
      throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can delete a vendor account.');
    }
    account.active = false;
    await markDeleted(account, saveAccount);
    await revokeAccountSessions(account.id, 'deleted');
    await audit(actor, `${role}.deleted`, 'account', account.id, { isDeleted: true });
    return { account, assignedBranchIds: current };
  }
  if (typeof body.active === 'boolean' && body.active !== account.active) {
    if (actor.role !== 'super_admin' && role === 'vendor') {
      throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can change global vendor account status.');
    }
    account.active = body.active;
    if (!account.active) await revokeAccountSessions(account.id, 'deactivated');
  }
  if (body.password) {
    if (actor.role !== 'super_admin' && role === 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can reset vendor credentials.');
    account.passwordHash = await hashPassword(requirePassword(body.password));
    await revokeAccountSessions(account.id, 'password_changed');
  }
  if (body.revokeSessions) await revokeAccountSessions(account.id, 'revoked_by_admin');
  await saveAccount(account);
  let assignedBranchIds = current;
  const nextIds = singleBranch && body.branchId ? [body.branchId] : body.assignedBranchIds;
  if (Array.isArray(nextIds)) {
    for (const branchId of nextIds) assertBranchInScope(scope, branchId);
    if (!scope.all) {
      const extras = current.filter((branchId) => !scope.branchIds.includes(branchId));
      assignedBranchIds = await replaceAssignments({ accountId: account.id, kind, branchIds: [...new Set([...extras, ...nextIds.map(String)])], actor });
    } else {
      assignedBranchIds = await replaceAssignments({ accountId: account.id, kind, branchIds: nextIds, actor });
    }
  }
  await audit(actor, `${role}.updated`, 'account', account.id, { assignedBranchIds, active: account.active });
  return {
    account,
    assignedBranchIds: scope.all ? assignedBranchIds : assignedBranchIds.filter((id) => scope.branchIds.includes(id)),
  };
};

export const linkVendorAccount = async (actor, body) => {
  const scope = await loadScope(actor);
  if (!['super_admin', 'admin'].includes(actor.role)) throw new ApiError(403, 'FORBIDDEN', 'You cannot manage this account type.');
  const branchIds = (body.assignedBranchIds ?? []).filter(Boolean);
  if (!branchIds.length) throw new ApiError(400, 'VALIDATION_ERROR', 'At least one assigned branch is required.');
  for (const branchId of branchIds) assertBranchInScope(scope, branchId);
  const account = await findAccountByEmail(requireEmail(body.email));
  if (!account || account.role !== 'vendor') {
    throw new ApiError(400, 'VENDOR_LINK_UNAVAILABLE', 'Unable to link this vendor account.');
  }
  const current = (await listAssignments({ accountId: account.id, kind: 'vendor', active: true })).map((row) => String(row.branchId));
  const assignedBranchIds = await replaceAssignments({
    accountId: account.id, kind: 'vendor', branchIds: [...new Set([...current, ...branchIds.map(String)])], actor,
  });
  await audit(actor, 'vendor.linked', 'account', account.id, { addedBranchIds: branchIds.map(String) });
  const visible = scope.all ? assignedBranchIds : assignedBranchIds.filter((id) => scope.branchIds.includes(id));
  return { account, assignedBranchIds: visible };
};

export const listStaff = async (actor, { role, kind }) => {
  const scope = await loadScope(actor);
  const accounts = await listAccounts({ role });
  const assignments = await listAssignments({ kind, active: true });
  return accounts.map((account) => {
    const assignedBranchIds = assignments.filter((row) => String(row.accountId) === String(account.id)).map((row) => String(row.branchId));
    return { account, assignedBranchIds };
  }).filter(({ assignedBranchIds }) => scope.all || assignedBranchIds.some((id) => scope.branchIds.includes(id)))
    .map(({ account, assignedBranchIds }) => {
      const visibleIds = scope.all ? assignedBranchIds : assignedBranchIds.filter((id) => scope.branchIds.includes(id));
      return publicAccount(account, {
        assignedBranchIds: visibleIds,
        branchId: kind === 'store_manager' ? visibleIds[0] : undefined,
      });
    });
};

export const listAssignedStores = async (actor) => {
  const scope = await loadScope(actor);
  if (actor.role !== 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Assigned stores are available on the vendor account.');
  const branches = await listBranches({ _id: { $in: scope.branchIds } });
  const chains = await listChains({ _id: { $in: branches.map((branch) => branch.chainId) } });
  const chainMap = Object.fromEntries(chains.map((chain) => [String(chain.id), chain]));
  return branches.map((branch) => publicAssignedStore(branch, chainMap[String(branch.chainId)]));
};
