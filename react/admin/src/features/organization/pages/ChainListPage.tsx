import { useEffect, useMemo, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useOrganizationApi, type Chain } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';

export function ChainListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [chains, setChains] = useState<Chain[]>([]);
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listChains().then(setChains).catch((caught: Error) => setError(caught.message)); }, [api]);
  const visible = useMemo(() => chains.filter((chain) => {
    if (query && !`${chain.name} ${chain.code}`.toLowerCase().includes(query.toLowerCase())) return false;
    if (status === 'Active') return chain.active;
    if (status === 'Inactive') return !chain.active;
    return true;
  }), [chains, query, status]);
  return (
    <ResourcePage title="Chains" lede="Parent retail chains and the number of branches in your current scope." action={<Link className="btn small" to="/chains/new">Create chain</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <ListTools placeholder="Search chains" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-chains.csv', [['Chain', 'Code', 'Branches', 'Status'], ...visible.map((chain) => [chain.name, chain.code, chain.branchCount ?? 0, chain.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Chain', 'Code', 'Branches', 'Status', '']}
        empty="No chains in your assigned scope."
        onRowClick={(index) => navigate(`/chains/${visible[index].id}`)}
        rows={visible.map((chain) => [
          <span key={`${chain.id}-name`}><strong>{chain.name}</strong><small>Retail partner</small></span>,
          chain.code,
          String(chain.branchCount ?? 0),
          chain.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${chain.id}-menu`}><Link to={`/chains/${chain.id}`}>Edit</Link></RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
