import { useMemo, useState } from 'react';
import { useQueryClient } from '@tanstack/react-query';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi, type Chain } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';
import { useConfirmDelete } from '../components/ConfirmDelete';

export function ChainListPage() {
  const api = useOrganizationApi();
  const queryClient = useQueryClient();
  const navigate = useNavigate();
  const superAdmin = useAuth().account?.role === 'super_admin';
  const confirmDelete = useConfirmDelete();
  const chainsQuery = useAdminList(['admin', 'chains'], api.listChains);
  const chains = chainsQuery.items;
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  const visible = useMemo(() => chains.filter((chain) => {
    if (query && !`${chain.name} ${chain.code}`.toLowerCase().includes(query.toLowerCase())) return false;
    if (status === 'Active') return chain.active;
    if (status === 'Inactive') return !chain.active;
    return true;
  }), [chains, query, status]);
  const remove = async (chain: Chain) => {
    if (!await confirmDelete()) return;
    try {
      await api.updateChain(chain.id, { isDeleted: true });
      await queryClient.invalidateQueries({ queryKey: ['admin', 'chains'] });
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to delete chain.');
    }
  };
  return (
    <ResourcePage title="Chains" lede="Parent retail chains and the number of branches in your current scope." action={superAdmin ? <Link className="btn small" to="/chains/new">Create chain</Link> : null} onRefresh={() => chainsQuery.refetch()}>
      {error || queryMessage(chainsQuery.error) ? <p className="form-error" role="alert">{error || queryMessage(chainsQuery.error)}</p> : null}
      <ListTools placeholder="Search chains" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-chains.csv', [['Chain', 'Code', 'Branches', 'Status'], ...visible.map((chain) => [chain.name, chain.code, chain.branchCount ?? 0, chain.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Chain', 'Code', 'Branches', 'Status', 'Actions']}
        empty="No chains in your assigned scope."
        onRowClick={(index) => navigate(`/chains/${visible[index].id}`)}
        rows={visible.map((chain) => [
          <span key={`${chain.id}-name`}><strong>{chain.name}</strong><small>Retail partner</small></span>,
          chain.code,
          String(chain.branchCount ?? 0),
          chain.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${chain.id}-menu`}>
            <Link to={`/chains/${chain.id}`}>Edit</Link>
            {superAdmin ? <button className="danger" type="button" onClick={() => void remove(chain)}>Delete</button> : null}
          </RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
