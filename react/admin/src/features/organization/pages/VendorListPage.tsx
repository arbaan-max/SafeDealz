import { useMemo, useState } from 'react';
import { useQueryClient } from '@tanstack/react-query';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi, type VendorAccount } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';
import { useConfirmDelete } from '../components/ConfirmDelete';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : 'Hidden');

export function VendorListPage() {
  const api = useOrganizationApi();
  const queryClient = useQueryClient();
  const navigate = useNavigate();
  const { account } = useAuth();
  const superAdmin = account?.role === 'super_admin';
  const confirmDelete = useConfirmDelete();
  const vendorsQuery = useAdminList(['admin', 'vendors'], api.listVendors);
  const vendors = vendorsQuery.items;
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  const visible = useMemo(() => vendors.filter((vendor) => {
    const haystack = `${vendor.displayName} ${vendor.email}`.toLowerCase();
    if (query && !haystack.includes(query.toLowerCase())) return false;
    if (status === 'Active') return vendor.active;
    if (status === 'Inactive') return !vendor.active;
    return true;
  }), [query, status, vendors]);
  const remove = async (vendor: VendorAccount) => {
    if (!await confirmDelete()) return;
    try {
      await api.updateVendor(vendor.id, { isDeleted: true });
      await queryClient.invalidateQueries({ queryKey: ['admin', 'vendors'] });
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to delete vendor.');
    }
  };
  return (
    <ResourcePage title="Vendors" lede="One vendor account owns one wallet. Assignments never split that wallet. Admin sees only linked stores, never global balances." action={<Link className="btn small" to="/vendors/new">Create vendor</Link>} onRefresh={() => vendorsQuery.refetch()}>
      {error || queryMessage(vendorsQuery.error) ? <p className="form-error" role="alert">{error || queryMessage(vendorsQuery.error)}</p> : null}
      <ListTools placeholder="Search vendors" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-vendors.csv', [['Vendor', 'Email', 'Branches', 'Available', 'Reserved', 'Status'], ...visible.map((vendor) => [vendor.displayName || '', vendor.email, vendor.assignedBranchIds?.length ?? 0, vendor.wallet?.availablePaise ?? '', vendor.wallet?.reservedPaise ?? '', vendor.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={superAdmin ? ['Vendor account', 'Email', 'Branches', 'Available', 'Reserved', 'Status', 'Actions'] : ['Vendor account', 'Email', 'Assigned stores', 'Status', 'Actions']}
        empty="No vendors are linked to your stores."
        onRowClick={(index) => navigate(`/vendors/${visible[index].id}`)}
        rows={visible.map((vendor) => {
          const menu = (
            <RowMenu key={`${vendor.id}-menu`}>
              <Link to={`/vendors/${vendor.id}/edit`}>Edit</Link>
              <Link to={`/vendors/${vendor.id}/wallet`}>Wallet</Link>
              {superAdmin ? <button className="danger" type="button" onClick={() => void remove(vendor)}>Delete</button> : null}
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
