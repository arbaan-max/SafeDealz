import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi, type Chain } from '../api/organizationApi';
import { DataTable, ResourcePage, StatusBadge } from '../components/ResourceKit';

export function ChainListPage() {
  const api = useOrganizationApi();
  const [chains, setChains] = useState<Chain[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listChains().then(setChains).catch((caught: Error) => setError(caught.message)); }, [api]);
  return (
    <ResourcePage title="Chains" lede="Parent retail chains and the number of branches in your current scope." action={<Link className="btn small" to="/chains/new">Create chain</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={['Chain', 'Code', 'Branches', 'Status', '']}
        empty="No chains in your assigned scope."
        rows={chains.map((chain) => [
          <strong key={`${chain.id}-name`}>{chain.name}</strong>,
          chain.code,
          String(chain.branchCount ?? 0),
          chain.active ? <StatusBadge tone="green">Active</StatusBadge> : <StatusBadge tone="gray">Inactive</StatusBadge>,
          <Link className="textlink" key={`${chain.id}-edit`} to={`/chains/${chain.id}`}>Manage</Link>,
        ])}
      />
    </ResourcePage>
  );
}
