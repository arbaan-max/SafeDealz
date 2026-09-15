import { useMemo, useState } from 'react';
import { useQueryClient } from '@tanstack/react-query';
import { Link, useNavigate } from 'react-router-dom';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi, type AdminAccount } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';
import { useConfirmDelete } from '../components/ConfirmDelete';

export function AdminListPage() {
  const api = useOrganizationApi();
  const queryClient = useQueryClient();
  const navigate = useNavigate();
  const confirmDelete = useConfirmDelete();
  const adminsQuery = useAdminList(['admin', 'admins'], api.listAdmins);
  const admins = adminsQuery.items;
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  const visible = useMemo(() => admins.filter((admin) => {
    if (query && !`${admin.displayName} ${admin.email}`.toLowerCase().includes(query.toLowerCase())) return false;
    if (status === 'Active') return admin.active;
    if (status === 'Inactive') return !admin.active;
    return true;
  }), [admins, query, status]);
  const remove = async (admin: AdminAccount) => {
    if (!await confirmDelete()) return;
    try {
      await api.updateAdmin(admin.id, { isDeleted: true });
      await queryClient.invalidateQueries({ queryKey: ['admin', 'admins'] });
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to delete admin.');
    }
  };
  return (
    <ResourcePage title="Admins" lede="Super Admin only. Each Admin sees only the stores you assign." action={<Link className="btn small" to="/admins/new">Create admin</Link>} onRefresh={() => adminsQuery.refetch()}>
      {error || queryMessage(adminsQuery.error) ? <p className="form-error" role="alert">{error || queryMessage(adminsQuery.error)}</p> : null}
      <ListTools placeholder="Search admins" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-admins.csv', [['Admin', 'Email', 'Assigned stores', 'Status'], ...visible.map((admin) => [admin.displayName || '', admin.email, admin.assignedBranchIds?.length ?? 0, admin.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Admin', 'Email', 'Assigned stores', 'Status', 'Actions']}
        empty="No Admin accounts yet."
        onRowClick={(index) => navigate(`/admins/${visible[index].id}`)}
        rows={visible.map((admin) => [
          <span key={`${admin.id}-name`}><strong>{admin.displayName || admin.email}</strong><small>Assigned-store administrator</small></span>,
          admin.email,
          String(admin.assignedBranchIds?.length ?? 0),
          admin.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${admin.id}-menu`}>
            <Link to={`/admins/${admin.id}`}>Edit</Link>
            <button className="danger" type="button" onClick={() => void remove(admin)}>Delete</button>
          </RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
