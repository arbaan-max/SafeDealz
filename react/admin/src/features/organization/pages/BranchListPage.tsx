import { useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi, type Branch, type Chain } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';

export function BranchListPage() {
  const api = useOrganizationApi();
  const [branches, setBranches] = useState<Branch[]>([]);
  const [chains, setChains] = useState<Chain[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void Promise.all([api.listBranches(), api.listChains()]).then(([nextBranches, nextChains]) => {
      setBranches(nextBranches); setChains(nextChains);
    }).catch((caught: Error) => setError(caught.message));
  }, [api]);
  const names = useMemo(() => Object.fromEntries(chains.map((chain) => [chain.id, chain.name])), [chains]);
  return (
    <ResourcePage eyebrow="A04" title="Branches" lede="Assigned stores, parent chain and payout readiness." action={<Link className="login-button" to="/branches/new">Add branch</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={['Branch', 'Parent chain', 'Payout', 'Status', '']}
        empty="No stores are assigned to this account."
        rows={branches.map((branch) => [
          <span key={`${branch.id}-name`}><strong>{branch.name}</strong><small>{branch.city || branch.code}</small></span>,
          names[branch.chainId] ?? branch.chainId,
          branch.payoutReady ? 'Ready' : 'Setup pending',
          branch.active ? 'Active' : 'Inactive',
          <Link key={`${branch.id}-edit`} to={`/branches/${branch.id}`}>Manage</Link>,
        ])}
      />
    </ResourcePage>
  );
}
