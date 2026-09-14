import { createStaffAccount, linkVendorAccount, listStaff, updateStaffAccount } from './organization.service.js';
import { createWallet, findWalletByVendor } from '../repositories/wallet.repository.js';
import { countActiveSessionsByAccount } from '../repositories/session.repository.js';
import { publicAccount, publicWallet } from '../utils/presenters.js';
import { ApiError } from '../utils/api-error.js';

export const listManagers = async (actor) => {
  const managers = await listStaff(actor, { role: 'store_manager', kind: 'store_manager' });
  const counts = await countActiveSessionsByAccount(managers.map((manager) => manager.id));
  return managers.map((manager) => ({ ...manager, activeSessionCount: counts[manager.id] ?? 0 }));
};
export const createManager = async (actor, body) => {
  const { account, assignedBranchIds } = await createStaffAccount(actor, {
    role: 'store_manager', kind: 'store_manager', body, singleBranch: true,
  });
  return publicAccount(account, { assignedBranchIds, branchId: assignedBranchIds[0] });
};
export const updateManager = async (actor, id, body) => {
  const { account, assignedBranchIds } = await updateStaffAccount(actor, {
    role: 'store_manager', kind: 'store_manager', id, body, singleBranch: true,
  });
  return publicAccount(account, { assignedBranchIds, branchId: assignedBranchIds[0] });
};

export const listVendors = async (actor) => {
  const vendors = await listStaff(actor, { role: 'vendor', kind: 'vendor' });
  return Promise.all(vendors.map(async (vendor) => {
    const wallet = await findWalletByVendor(vendor.id);
    const hideBalances = actor.role === 'admin';
    return { ...vendor, wallet: wallet ? publicWallet(wallet, { hideBalances }) : null };
  }));
};

export const createVendor = async (actor, body) => {
  if (body.existingEmail || body.linkExisting) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Use the dedicated link action to attach an existing vendor.');
  }
  const { account, assignedBranchIds } = await createStaffAccount(actor, {
    role: 'vendor', kind: 'vendor', body, singleBranch: false,
  });
  const wallet = await findWalletByVendor(account.id) || await createWallet({ vendorAccountId: account.id, availablePaise: 0, reservedPaise: 0 });
  return publicAccount(account, { assignedBranchIds, wallet: publicWallet(wallet, { hideBalances: actor.role === 'admin' }) });
};

export const linkVendor = async (actor, body) => {
  const { account, assignedBranchIds } = await linkVendorAccount(actor, body);
  const wallet = await findWalletByVendor(account.id) || await createWallet({ vendorAccountId: account.id, availablePaise: 0, reservedPaise: 0 });
  return publicAccount(account, { assignedBranchIds, wallet: publicWallet(wallet, { hideBalances: actor.role === 'admin' }) });
};

export const updateVendor = async (actor, id, body) => {
  const { account, assignedBranchIds } = await updateStaffAccount(actor, {
    role: 'vendor', kind: 'vendor', id, body, singleBranch: false,
  });
  const wallet = await findWalletByVendor(account.id);
  return publicAccount(account, {
    assignedBranchIds,
    wallet: wallet ? publicWallet(wallet, { hideBalances: actor.role === 'admin' }) : null,
  });
};
