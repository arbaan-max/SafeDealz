import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type VendorAccount } from '../api/organizationApi';
import { DataTable, ResourcePage, StatusBadge } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : 'Hidden');

export function VendorListPage() {
  const api = useOrganizationApi();
  const { account } = useAuth();
  const superAdmin = account?.role === 'super_admin';
  const [vendors, setVendors] = useState<VendorAccount[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listVendors().then(setVendors).catch((caught: Error) => setError(caught.message)); }, [api]);
  return (
    <ResourcePage title="Vendors" lede="One vendor account owns one wallet. Assignments never split that wallet. Admin sees only linked stores, never global balances." action={<Link className="btn small" to="/vendors/new">Create vendor</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={superAdmin ? ['Vendor account', 'Email', 'Branches', 'Available', 'Reserved', 'Status', ''] : ['Vendor account', 'Email', 'Assigned stores', 'Status', '']}
        empty="No vendors are linked to your stores."
        rows={vendors.map((vendor) => superAdmin ? [
          vendor.displayName || vendor.email,
          vendor.email,
          String(vendor.assignedBranchIds?.length ?? 0),
          rupees(vendor.wallet?.availablePaise),
          rupees(vendor.wallet?.reservedPaise),
          vendor.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <span key={`${vendor.id}-actions`}><Link className="textlink" to={`/vendors/${vendor.id}`}>Manage</Link> · <Link className="textlink" to={`/vendors/${vendor.id}/wallet`}>Wallet</Link></span>,
        ] : [
          vendor.displayName || vendor.email,
          vendor.email,
          String(vendor.assignedBranchIds?.length ?? 0),
          vendor.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <span key={`${vendor.id}-actions`}><Link className="textlink" to={`/vendors/${vendor.id}`}>Manage</Link> · <Link className="textlink" to={`/vendors/${vendor.id}/wallet`}>Wallet</Link></span>,
        ])}
      />
    </ResourcePage>
  );
}
