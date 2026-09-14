import { useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi, type Branch, type Chain, type ManagerAccount } from '../api/organizationApi';
import { DataTable, ResourcePage, StatusBadge } from '../components/ResourceKit';

export function ManagerListPage() {
  const api = useOrganizationApi();
  const [managers, setManagers] = useState<ManagerAccount[]>([]);
  const [branches, setBranches] = useState<Branch[]>([]);
  const [chains, setChains] = useState<Chain[]>([]);
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
  return (
    <ResourcePage title="Managers" lede="Create Store Manager logins, assign a branch and deactivate unused accounts. Multiple managers may share a branch." action={<Link className="btn small" to="/managers/new">Create manager</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={['Manager', 'Email', 'Branch', 'Sessions', 'Status', '']}
        empty="No managers are assigned to your stores."
        rows={managers.map((manager) => [
          manager.displayName || manager.email,
          manager.email,
          labels[manager.branchId] ?? manager.branchId,
          String(manager.activeSessionCount ?? 0),
          manager.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <Link className="textlink" key={`${manager.id}-edit`} to={`/managers/${manager.id}`}>Manage</Link>,
        ])}
      />
    </ResourcePage>
  );
}
