import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi, type AdminAccount } from '../api/organizationApi';
import { DataTable, ResourcePage, StatusBadge } from '../components/ResourceKit';

export function AdminListPage() {
  const api = useOrganizationApi();
  const [admins, setAdmins] = useState<AdminAccount[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listAdmins().then(setAdmins).catch((caught: Error) => setError(caught.message)); }, [api]);
  return (
    <ResourcePage title="Admins" lede="Super Admin only. Each Admin sees only the stores you assign." action={<Link className="btn small" to="/admins/new">Create admin</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={['Admin', 'Email', 'Assigned stores', 'Status', '']}
        empty="No Admin accounts yet."
        rows={admins.map((admin) => [
          admin.displayName || admin.email,
          admin.email,
          String(admin.assignedBranchIds?.length ?? 0),
          admin.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <Link className="textlink" key={`${admin.id}-edit`} to={`/admins/${admin.id}`}>Manage</Link>,
        ])}
      />
    </ResourcePage>
  );
}
