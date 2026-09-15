import { useMemo, useState } from 'react';
import { useQueryClient } from '@tanstack/react-query';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi, type Branch } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';
import { useConfirmDelete } from '../components/ConfirmDelete';

export function BranchListPage() {
  const api = useOrganizationApi();
  const queryClient = useQueryClient();
  const navigate = useNavigate();
  const superAdmin = useAuth().account?.role === 'super_admin';
  const confirmDelete = useConfirmDelete();
  const branchesQuery = useAdminList(['admin', 'branches'], api.listBranches);
  const chainsQuery = useAdminList(['admin', 'chains'], api.listChains);
  const branches = branchesQuery.items;
  const chains = chainsQuery.items;
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  const names = useMemo(() => Object.fromEntries(chains.map((chain) => [chain.id, chain.name])), [chains]);
  const visible = useMemo(() => branches.filter((branch) => {
    const haystack = `${branch.name} ${branch.city} ${names[branch.chainId] || ''}`.toLowerCase();
    if (query && !haystack.includes(query.toLowerCase())) return false;
    if (status === 'Active') return branch.active;
    if (status === 'Inactive') return !branch.active;
    if (status === 'Pending') return !branch.payoutReady;
    return true;
  }), [branches, names, query, status]);
  const remove = async (branch: Branch) => {
    if (!await confirmDelete()) return;
    try {
      await api.updateBranch(branch.id, { isDeleted: true });
      await queryClient.invalidateQueries({ queryKey: ['admin', 'branches'] });
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to delete branch.');
    }
  };
  return (
    <ResourcePage title="Branches" lede="Assigned stores, parent chain and payout readiness." action={superAdmin ? <Link className="btn small" to="/branches/new">Add branch</Link> : null} onRefresh={() => Promise.all([branchesQuery.refetch(), chainsQuery.refetch()])}>
      {error || queryMessage(branchesQuery.error) || queryMessage(chainsQuery.error) ? <p className="form-error" role="alert">{error || queryMessage(branchesQuery.error) || queryMessage(chainsQuery.error)}</p> : null}
      <ListTools placeholder="Search branches" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-branches.csv', [['Branch', 'Parent chain', 'Payout', 'Status'], ...visible.map((branch) => [branch.name, names[branch.chainId] || '', branch.payoutReady ? 'Ready' : 'Setup pending', branch.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option><option>Pending</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Branch', 'Parent chain', 'Payout', 'Status', 'Actions']}
        empty="No stores are assigned to this account."
        onRowClick={(index) => navigate(`/branches/${visible[index].id}`)}
        rows={visible.map((branch) => [
          <span key={`${branch.id}-name`}><strong>{branch.name}</strong><small>{branch.city || branch.code}</small></span>,
          names[branch.chainId] ?? branch.chainId,
          branch.payoutReady ? <StatusBadge tone="green">Ready</StatusBadge> : <StatusBadge tone="amber">Setup pending</StatusBadge>,
          branch.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${branch.id}-menu`}>
            <Link to={`/branches/${branch.id}`}>Edit</Link>
            {superAdmin ? <button className="danger" type="button" onClick={() => void remove(branch)}>Delete</button> : null}
          </RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
