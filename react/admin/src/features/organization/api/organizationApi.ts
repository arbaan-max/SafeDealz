import { useMemo } from 'react';
import { useAuth } from '../../auth/AuthContext';

export type Chain = {
  id: string;
  name: string;
  code: string;
  contactName?: string;
  contactEmail?: string;
  contactPhone?: string;
  active: boolean;
  branchCount?: number;
};

export type Branch = {
  id: string;
  chainId: string;
  name: string;
  code: string;
  address?: string;
  city?: string;
  contactName?: string;
  contactPhone?: string;
  beneficiaryName?: string;
  ifsc?: string;
  accountNumberMasked?: string;
  payoutReady: boolean;
  active: boolean;
};

export type AdminAccount = {
  id: string;
  email: string;
  role: string;
  displayName: string;
  phone?: string;
  active: boolean;
  assignedBranchIds: string[];
};

export type ManagerAccount = {
  id: string;
  email: string;
  role: string;
  displayName: string;
  phone?: string;
  active: boolean;
  branchId: string;
  assignedBranchIds: string[];
  activeSessionCount?: number;
};

export type VendorAccount = {
  id: string;
  email: string;
  role: string;
  displayName: string;
  phone?: string;
  active: boolean;
  assignedBranchIds: string[];
  wallet?: { availablePaise?: number; reservedPaise?: number; processingPaise?: number } | null;
};

export type WalletLedgerEntry = {
  id?: string;
  type?: string;
  amountPaise?: number;
  availableAfterPaise?: number;
  reservedAfterPaise?: number;
  reason?: string;
  referenceId?: string;
};

export type WalletHold = {
  id?: string;
  amountPaise?: number;
  status?: string;
  reason?: string;
};

export type WalletDetail = {
  id?: string;
  vendorAccountId?: string;
  availablePaise?: number;
  reservedPaise?: number;
  processingPaise?: number;
  currency?: string;
  ledger?: WalletLedgerEntry[];
  reservations?: WalletHold[];
};

export function useOrganizationApi() {
  const { request } = useAuth();
  return useMemo(() => {
    const json = (method: string, body?: unknown) => ({ method, body: body === undefined ? undefined : JSON.stringify(body) });
    return {
      listChains: () => request<Chain[]>('/chains'),
      createChain: (body: Partial<Chain>) => request<Chain>('/chains', json('POST', body)),
      updateChain: (id: string, body: Partial<Chain>) => request<Chain>(`/chains/${id}`, json('PATCH', body)),
      listBranches: () => request<Branch[]>('/branches'),
      createBranch: (body: Record<string, unknown>) => request<Branch>('/branches', json('POST', body)),
      updateBranch: (id: string, body: Record<string, unknown>) => request<Branch>(`/branches/${id}`, json('PATCH', body)),
      listAdmins: () => request<AdminAccount[]>('/admins'),
      createAdmin: (body: Record<string, unknown>) => request<AdminAccount>('/admins', json('POST', body)),
      updateAdmin: (id: string, body: Record<string, unknown>) => request<AdminAccount>(`/admins/${id}`, json('PATCH', body)),
      listManagers: () => request<ManagerAccount[]>('/managers'),
      createManager: (body: Record<string, unknown>) => request<ManagerAccount>('/managers', json('POST', body)),
      updateManager: (id: string, body: Record<string, unknown>) => request<ManagerAccount>(`/managers/${id}`, json('PATCH', body)),
      listVendors: () => request<VendorAccount[]>('/vendors'),
      createVendor: (body: Record<string, unknown>) => request<VendorAccount>('/vendors', json('POST', body)),
      linkVendor: (body: Record<string, unknown>) => request<VendorAccount>('/vendors/links', json('POST', body)),
      updateVendor: (id: string, body: Record<string, unknown>) => request<VendorAccount>(`/vendors/${id}`, json('PATCH', body)),
      getVendorWallet: (vendorId: string) => request<WalletDetail>(`/wallets/${vendorId}`),
    };
  }, [request]);
}
