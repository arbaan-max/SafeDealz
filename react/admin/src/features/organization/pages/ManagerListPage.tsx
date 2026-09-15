import { useMemo, useState } from 'react';
import { useQueryClient } from '@tanstack/react-query';
import { Link, useNavigate } from 'react-router-dom';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi, type ManagerAccount } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';
import { useConfirmDelete } from '../components/ConfirmDelete';

export function ManagerListPage() {
  const api = useOrganizationApi();
  const queryClient = useQueryClient();
  const navigate = useNavigate();
  const confirmDelete = useConfirmDelete();
  const managersQuery = useAdminList(['admin', 'managers'], api.listManagers);
  const branchesQuery = useAdminList(['admin', 'branches'], api.listBranches);
  const chainsQuery = useAdminList(['admin', 'chains'], api.listChains);
  const managers = managersQuery.items;
  const branches = branchesQuery.items;
  const chains = chainsQuery.items;
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  const labels = useMemo(() => {
    const chainNames = Object.fromEntries(chains.map((chain) => [chain.id, chain.name]));
    return Object.fromEntries(branches.map((branch) => [branch.id, `${chainNames[branch.chainId] ?? 'Store'} / ${branch.name}`]));
  }, [branches, chains]);
  const visible = useMemo(() => managers.filter((manager) => {
    const haystack = `${manager.displayName} ${manager.email} ${labels[manager.branchId] || ''}`.toLowerCase();
    if (query && !haystack.includes(query.toLowerCase())) return false;
    if (status === 'Active') return manager.active;
    if (status === 'Inactive') return !manager.active;
    return true;
  }), [labels, managers, query, status]);
  const remove = async (manager: ManagerAccount) => {
    if (!await confirmDelete()) return;
    try {
      await api.updateManager(manager.id, { isDeleted: true });
      await queryClient.invalidateQueries({ queryKey: ['admin', 'managers'] });
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to delete manager.');
    }
  };
  return (
    <ResourcePage title="Managers" lede="Create Store Manager logins, assign a branch and deactivate unused accounts. Multiple managers may share a branch." action={<Link className="btn small" to="/managers/new">Create manager</Link>} onRefresh={() => Promise.all([managersQuery.refetch(), branchesQuery.refetch(), chainsQuery.refetch()])}>
      {error || queryMessage(managersQuery.error) ? <p className="form-error" role="alert">{error || queryMessage(managersQuery.error)}</p> : null}
      <ListTools placeholder="Search managers" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-managers.csv', [['Manager', 'Email', 'Branch', 'Sessions', 'Status'], ...visible.map((manager) => [manager.displayName || '', manager.email, labels[manager.branchId] || '', manager.activeSessionCount ?? 0, manager.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Manager', 'Email', 'Branch', 'Sessions', 'Status', 'Actions']}
        empty="No managers are assigned to your stores."
        onRowClick={(index) => navigate(`/managers/${visible[index].id}`)}
        rows={visible.map((manager) => [
          <span key={`${manager.id}-name`}><strong>{manager.displayName || manager.email}</strong><small>Store manager</small></span>,
          manager.email,
          labels[manager.branchId] ?? manager.branchId,
          String(manager.activeSessionCount ?? 0),
          manager.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${manager.id}-menu`}>
            <Link to={`/managers/${manager.id}`}>Edit</Link>
            <button className="danger" type="button" onClick={() => void remove(manager)}>Delete</button>
          </RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
