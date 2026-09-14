import { useEffect, useMemo, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type VendorAccount } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : 'Hidden');

export function VendorListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const { account } = useAuth();
  const superAdmin = account?.role === 'super_admin';
  const [vendors, setVendors] = useState<VendorAccount[]>([]);
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  const load = () => void api.listVendors().then(setVendors).catch((caught: Error) => setError(caught.message));
  useEffect(() => { load(); }, [api]); // eslint-disable-line react-hooks/exhaustive-deps -- list vendors on first paint
  const visible = useMemo(() => vendors.filter((vendor) => {
    const haystack = `${vendor.displayName} ${vendor.email}`.toLowerCase();
    if (query && !haystack.includes(query.toLowerCase())) return false;
    if (status === 'Active') return vendor.active;
    if (status === 'Inactive') return !vendor.active;
    return true;
  }), [query, status, vendors]);
  const archive = async (vendor: VendorAccount) => {
    try {
      await api.updateVendor(vendor.id, { active: !vendor.active });
      load();
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to update vendor.');
    }
  };
  return (
    <ResourcePage title="Vendors" lede="One vendor account owns one wallet. Assignments never split that wallet. Admin sees only linked stores, never global balances." action={<Link className="btn small" to="/vendors/new">Create vendor</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <ListTools placeholder="Search vendors" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-vendors.csv', [['Vendor', 'Email', 'Branches', 'Available', 'Reserved', 'Status'], ...visible.map((vendor) => [vendor.displayName || '', vendor.email, vendor.assignedBranchIds?.length ?? 0, vendor.wallet?.availablePaise ?? '', vendor.wallet?.reservedPaise ?? '', vendor.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={superAdmin ? ['Vendor account', 'Email', 'Branches', 'Available', 'Reserved', 'Status', ''] : ['Vendor account', 'Email', 'Assigned stores', 'Status', '']}
        empty="No vendors are linked to your stores."
        onRowClick={(index) => navigate(`/vendors/${visible[index].id}`)}
        rows={visible.map((vendor) => {
          const menu = (
            <RowMenu key={`${vendor.id}-menu`}>
              <Link to={`/vendors/${vendor.id}/edit`}>Edit</Link>
              <Link to={`/vendors/${vendor.id}/wallet`}>Wallet</Link>
              {superAdmin ? <button type="button" onClick={() => void archive(vendor)}>{vendor.active ? 'Archive' : 'Activate'}</button> : null}
            </RowMenu>
          );
          return superAdmin ? [
            <span key={`${vendor.id}-name`}><strong>{vendor.displayName || vendor.email}</strong><small>Single vendor wallet</small></span>,
            vendor.email,
            String(vendor.assignedBranchIds?.length ?? 0),
            rupees(vendor.wallet?.availablePaise),
            rupees(vendor.wallet?.reservedPaise),
            vendor.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
            menu,
          ] : [
            <span key={`${vendor.id}-name`}><strong>{vendor.displayName || vendor.email}</strong><small>Single vendor wallet</small></span>,
            vendor.email,
            String(vendor.assignedBranchIds?.length ?? 0),
            vendor.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
            menu,
          ];
        })}
      />
    </ResourcePage>
  );
}
