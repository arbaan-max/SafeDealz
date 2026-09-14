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
    };
  }, [request]);
}
