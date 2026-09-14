import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi } from '../api/organizationApi';

export function OverviewPage() {
  const auth = useAuth();
  const api = useOrganizationApi();
  const [counts, setCounts] = useState({ chains: 0, branches: 0 });
  useEffect(() => {
    void Promise.all([api.listChains(), api.listBranches()]).then(([chains, branches]) => setCounts({ chains: chains.length, branches: branches.length }));
  }, [api]);
  const scoped = auth.account?.role === 'admin';
  return (
    <section aria-labelledby="page-title">
      <div className="eyebrow">A01</div>
      <h1 id="page-title">Overview</h1>
      <p className="lede">{scoped ? 'You can only see stores assigned to this Admin account. Empty assignment means no store access.' : 'Super Admin workspace for chains, branches and Admin assignments.'}</p>
      <div className="foundation-grid">
        <article className="foundation-card"><h2>{counts.chains}</h2><p>Visible chains</p></article>
        <article className="foundation-card"><h2>{counts.branches}</h2><p>Assigned branches</p></article>
        <article className="foundation-card"><h2>{auth.account?.email}</h2><p>{auth.account?.role === 'super_admin' ? 'Super Admin' : 'Admin'}</p></article>
      </div>
      <p className="notice" role="status"><strong>No operational totals.</strong> Auction and payment metrics arrive in later phases. Start with <Link to="/chains">Chains</Link> or <Link to="/branches">Branches</Link>.</p>
    </section>
  );
}
