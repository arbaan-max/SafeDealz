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
  paymentsProcessingPaise?: number;
  currency?: string;
  ledger?: WalletLedgerEntry[];
  reservations?: WalletHold[];
};

export type PaymentAttempt = {
  at?: string;
  event?: string;
  status?: string;
  note?: string;
};

export type PaymentInstruction = {
  id?: string;
  dealId?: string;
  branchId?: string;
  status?: string;
  amountPaise?: number;
  feePaise?: number;
  beneficiaryName?: string;
  accountNumberMasked?: string;
  ifsc?: string;
  providerTransferId?: string;
  providerStatus?: string;
  attempts?: PaymentAttempt[];
};

export type AuctionRound = {
  id: string;
  deviceId?: string;
  status?: string;
  roundNumber?: number;
  highestAmountPaise?: number;
  declineReason?: string;
};

export type BidRow = {
  id: string;
  amountPaise?: number;
  feePaise?: number;
  status?: string;
  vendorAccountId?: string;
};

export type AuctionSettings = {
  biddingMinutes: number;
  acceptanceMinutes: number;
};

export type RewardPolicy = {
  id?: string;
  version?: number;
  earnPointsPerHundredRupees?: number;
  pointValuePaise?: number;
  eligibleCategories?: string[];
  expiryDays?: number;
  redemptionScope?: string;
  chainRedemptionEnabled?: boolean;
  multiBranchRedemptionEnabled?: boolean;
  futureScopesInactive?: boolean;
  note?: string;
};

export type RewardPolicyBundle = {
  current: RewardPolicy;
  versions: RewardPolicy[];
};

export type RewardBranchTotal = {
  branchId?: string;
  branchName?: string;
  issuedPoints?: number;
  redeemedPoints?: number;
  outstandingPoints?: number;
  issuedValuePaise?: number;
  redeemedValuePaise?: number;
  outstandingValuePaise?: number;
};

export type RewardOverview = {
  branches?: RewardBranchTotal[];
  totals?: RewardBranchTotal;
  policy?: RewardPolicy;
};

export type RewardBalance = {
  id?: string;
  customerPhone?: string;
  customerName?: string;
  branchId?: string;
  branchName?: string;
  pointsBalance?: number;
  issuedPoints?: number;
  redeemedPoints?: number;
  outstandingValuePaise?: number;
  redeemableAtThisBranch?: boolean;
};

export type RewardLedgerEntry = {
  id?: string;
  type?: string;
  points?: number;
  valuePaise?: number;
  balanceAfter?: number;
  branchId?: string;
  dealId?: string;
  invoiceNumber?: string;
  policyVersion?: number;
  reason?: string;
  createdAt?: string;
};

export type CustomerRewards = {
  phone?: string;
  customerName?: string;
  balances?: RewardBalance[];
  entries?: RewardLedgerEntry[];
};

export type InboxNotification = {
  id?: string;
  title?: string;
  body?: string;
  category?: string;
  audience?: string;
  status?: string;
  recipientRole?: string;
  createdAt?: string;
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
      getSettings: () => request<AuctionSettings>('/settings'),
      updateSettings: (body: AuctionSettings) => request<AuctionSettings>('/settings', json('PATCH', body)),
      listPayments: () => request<PaymentInstruction[]>('/payments'),
      getPayment: (id: string) => request<PaymentInstruction>(`/payments/${id}`),
      retryPayment: (id: string) => request<PaymentInstruction>(`/payments/${id}/retry`, json('POST', {})),
      reconcilePayment: (id: string, outcome: 'processed' | 'failed') => request<PaymentInstruction>(`/payments/${id}/reconcile`, json('POST', { outcome })),
      listAuctions: () => request<AuctionRound[]>('/auctions'),
      getAuction: (id: string) => request<AuctionRound>(`/auctions/${id}`),
      listAuctionBids: (id: string) => request<BidRow[]>(`/auctions/${id}/bids`),
      getRewardOverview: (branchId?: string) => request<RewardOverview>(`/rewards/overview${branchId ? `?branchId=${encodeURIComponent(branchId)}` : ''}`),
      getCustomerRewards: (phone: string) => request<CustomerRewards>(`/rewards/customers/${encodeURIComponent(phone)}`),
      getRewardPolicy: () => request<RewardPolicyBundle>('/rewards/policy'),
      publishRewardPolicy: (body: Partial<RewardPolicy>) => request<RewardPolicyBundle>('/rewards/policy', json('POST', body)),
      listNotificationHistory: () => request<InboxNotification[]>('/notifications/history'),
      broadcastNotification: (body: { audience: string; title: string; body: string; category?: string; branchId?: string; accountId?: string }) =>
        request<{ campaignId: string; delivered: number }>('/notifications/broadcasts', json('POST', body)),
    };
  }, [request]);
}
