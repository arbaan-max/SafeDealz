import { useEffect, useMemo, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useOrganizationApi, type Branch, type Chain } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';

export function BranchListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [branches, setBranches] = useState<Branch[]>([]);
  const [chains, setChains] = useState<Chain[]>([]);
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void Promise.all([api.listBranches(), api.listChains()]).then(([nextBranches, nextChains]) => {
      setBranches(nextBranches); setChains(nextChains);
    }).catch((caught: Error) => setError(caught.message));
  }, [api]);
  const names = useMemo(() => Object.fromEntries(chains.map((chain) => [chain.id, chain.name])), [chains]);
  const visible = useMemo(() => branches.filter((branch) => {
    const haystack = `${branch.name} ${branch.city} ${names[branch.chainId] || ''}`.toLowerCase();
    if (query && !haystack.includes(query.toLowerCase())) return false;
    if (status === 'Active') return branch.active;
    if (status === 'Inactive') return !branch.active;
    if (status === 'Pending') return !branch.payoutReady;
    return true;
  }), [branches, names, query, status]);
  return (
    <ResourcePage title="Branches" lede="Assigned stores, parent chain and payout readiness." action={<Link className="btn small" to="/branches/new">Add branch</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <ListTools placeholder="Search branches" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-branches.csv', [['Branch', 'Parent chain', 'Payout', 'Status'], ...visible.map((branch) => [branch.name, names[branch.chainId] || '', branch.payoutReady ? 'Ready' : 'Setup pending', branch.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option><option>Pending</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Branch', 'Parent chain', 'Payout', 'Status', '']}
        empty="No stores are assigned to this account."
        onRowClick={(index) => navigate(`/branches/${visible[index].id}`)}
        rows={visible.map((branch) => [
          <span key={`${branch.id}-name`}><strong>{branch.name}</strong><small>{branch.city || branch.code}</small></span>,
          names[branch.chainId] ?? branch.chainId,
          branch.payoutReady ? <StatusBadge tone="green">Ready</StatusBadge> : <StatusBadge tone="amber">Setup pending</StatusBadge>,
          branch.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${branch.id}-menu`}><Link to={`/branches/${branch.id}`}>Edit</Link></RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
