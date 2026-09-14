import { useEffect, useMemo, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useOrganizationApi, type Branch, type Chain, type ManagerAccount } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, RowMenu, StatusBadge, downloadCsv } from '../components/ResourceKit';

export function ManagerListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [managers, setManagers] = useState<ManagerAccount[]>([]);
  const [branches, setBranches] = useState<Branch[]>([]);
  const [chains, setChains] = useState<Chain[]>([]);
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void Promise.all([api.listManagers(), api.listBranches(), api.listChains()]).then(([nextManagers, nextBranches, nextChains]) => {
      setManagers(nextManagers); setBranches(nextBranches); setChains(nextChains);
    }).catch((caught: Error) => setError(caught.message));
  }, [api]);
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
  return (
    <ResourcePage title="Managers" lede="Create Store Manager logins, assign a branch and deactivate unused accounts. Multiple managers may share a branch." action={<Link className="btn small" to="/managers/new">Create manager</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <ListTools placeholder="Search managers" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-managers.csv', [['Manager', 'Email', 'Branch', 'Sessions', 'Status'], ...visible.map((manager) => [manager.displayName || '', manager.email, labels[manager.branchId] || '', manager.activeSessionCount ?? 0, manager.active ? 'Active' : 'Inactive'])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Active</option><option>Inactive</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Manager', 'Email', 'Branch', 'Sessions', 'Status', '']}
        empty="No managers are assigned to your stores."
        onRowClick={(index) => navigate(`/managers/${visible[index].id}`)}
        rows={visible.map((manager) => [
          <span key={`${manager.id}-name`}><strong>{manager.displayName || manager.email}</strong><small>Store manager</small></span>,
          manager.email,
          labels[manager.branchId] ?? manager.branchId,
          String(manager.activeSessionCount ?? 0),
          manager.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <RowMenu key={`${manager.id}-menu`}><Link to={`/managers/${manager.id}`}>Edit</Link></RowMenu>,
        ])}
      />
    </ResourcePage>
  );
}
