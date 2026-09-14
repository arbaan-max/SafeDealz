import { useEffect, useMemo, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useOrganizationApi, type AdminAccount } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';

export function AdminListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [admins, setAdmins] = useState<AdminAccount[]>([]);
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listAdmins().then(setAdmins).catch((caught: Error) => setError(caught.message)); }, [api]);
  const visible = useMemo(() => admins.filter((admin) => {
    if (query && !`${admin.displayName} ${admin.email}`.toLowerCase().includes(query.toLowerCase())) return false;
    if (status === 'Active') return admin.active;
    if (status === 'Inactive') return !admin.active;
    return true;
  }), [admins, query, status]);
  return (
    <ResourcePage title="Admins" lede="Super Admin only. Each Admin sees only the stores you assign." action={<Link className="btn small" to="/admins/new">Create admin</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <ListTools placeholder="Search admins" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-admins.csv', [['Admin', 'Email', 'Assigned stores', 'Status'], ...visible.map((admin) => [admin.displayName || '', admin.email, admin.assignedBranchIds?.length ?? 0, admin.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Admin', 'Email', 'Assigned stores', 'Status', '']}
        empty="No Admin accounts yet."
        onRowClick={(index) => navigate(`/admins/${visible[index].id}`)}
        rows={visible.map((admin) => [
          <span key={`${admin.id}-name`}><strong>{admin.displayName || admin.email}</strong><small>Assigned-store administrator</small></span>,
          admin.email,
          String(admin.assignedBranchIds?.length ?? 0),
          admin.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${admin.id}-menu`}><Link to={`/admins/${admin.id}`}>Edit</Link></RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
