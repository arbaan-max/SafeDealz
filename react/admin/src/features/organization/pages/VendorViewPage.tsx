import { useEffect, useMemo, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type Branch, type Chain, type VendorAccount } from '../api/organizationApi';
import { ResourcePage, StatusBadge } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');

export function VendorViewPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const superAdmin = useAuth().account?.role === 'super_admin';
  const [vendor, setVendor] = useState<VendorAccount | null>(null);
  const [branches, setBranches] = useState<Branch[]>([]);
  const [chains, setChains] = useState<Chain[]>([]);
  const [error, setError] = useState<string | null>(null);
  const load = () => {
    void Promise.all([api.listVendors(), api.listBranches(), api.listChains()]).then(([vendors, nextBranches, nextChains]) => {
      setVendor(vendors.find((item) => item.id === id) || null);
      setBranches(nextBranches);
      setChains(nextChains);
    }).catch((caught: Error) => setError(caught.message));
  };
  useEffect(() => { load(); }, [api, id]); // eslint-disable-line react-hooks/exhaustive-deps -- reload vendor view when the id changes
  const chainName = useMemo(() => Object.fromEntries(chains.map((chain) => [chain.id, chain.name])), [chains]);
  const assigned = branches.filter((branch) => vendor?.assignedBranchIds?.includes(branch.id));
  return (
    <ResourcePage title="Vendor account" lede="Open the vendor record. Use Edit to change details, or Wallet for available and reserved funds." backTo="/vendors" backLabel="Back to vendors" onRefresh={load}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {vendor ? (
        <div className="admin-grid">
          <div className="card">
            <div className="between">
              <div>
                <h2>{vendor.displayName || vendor.email}</h2>
                <p className="muted">{vendor.email}</p>
              </div>
              {vendor.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>}
            </div>
            <div className="gap" />
            <div className="detail"><span>Phone</span><strong>{vendor.phone || '—'}</strong></div>
            <div className="detail"><span>Assigned stores</span><strong>{assigned.length}</strong></div>
            <div className="detail"><span>Available</span><strong>{rupees(vendor.wallet?.availablePaise)}</strong></div>
            <div className="detail"><span>Reserved</span><strong>{rupees(vendor.wallet?.reservedPaise)}</strong></div>
            <div className="gap" />
            <div className="row-actions">
              <Link className="btn small" to={`/vendors/${vendor.id}/edit`}>Edit</Link>
              <Link className="btn small secondary" to={`/vendors/${vendor.id}/wallet`}>Wallet</Link>
              {superAdmin ? (
                <button
                  className="btn small secondary"
                  type="button"
                  onClick={async () => {
                    try {
                      const next = await api.updateVendor(vendor.id, { active: !vendor.active });
                      setVendor(next);
                    } catch (caught) {
                      setError(caught instanceof Error ? caught.message : 'Unable to update vendor status.');
                    }
                  }}
                >
                  {vendor.active ? 'Deactivate' : 'Activate'}
                </button>
              ) : null}
            </div>
          </div>
          <div className="card">
            <h3>Assigned branches</h3>
            <p className="muted" style={{ margin: '8px 0 14px' }}>This wallet is usable at every assigned branch.</p>
            {assigned.length ? assigned.map((branch) => (
              <div className="detail" key={branch.id}>
                <span>{chainName[branch.chainId] || 'Store'}</span>
                <strong>{branch.name}</strong>
              </div>
            )) : <p className="empty-state" role="status">No stores assigned.</p>}
          </div>
        </div>
      ) : !error ? <p className="empty-state" role="status">Vendor was not found.</p> : null}
    </ResourcePage>
  );
}
