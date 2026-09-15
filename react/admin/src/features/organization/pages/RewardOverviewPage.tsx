import { FormEvent, useState } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { useAdminQuery, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, Field, ResourcePage } from '../components/ResourceKit';
import { pts, rupees } from './rewardFormat';

export function RewardOverviewPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [params, setParams] = useSearchParams();
  const tab = params.get('tab') === 'customers' ? 'customers' : 'branches';
  const [phone, setPhone] = useState('');
  const [page, setPage] = useState(1);
  const [lookupError, setLookupError] = useState<string | null>(null);
  const overviewQuery = useAdminQuery(['admin', 'rewards', 'overview'], () => api.getRewardOverview());
  const recentQuery = useAdminQuery(['admin', 'rewards', 'customers', page], () => api.listRewardCustomers(page), { placeholderData: true });
  const overview = overviewQuery.data;
  const recent = recentQuery.data?.items ?? [];
  const total = recentQuery.data?.total ?? 0;
  const setTab = (next: 'branches' | 'customers') => {
    const nextParams = new URLSearchParams(params);
    if (next === 'customers') nextParams.set('tab', 'customers');
    else nextParams.delete('tab');
    setParams(nextParams, { replace: true });
  };
  const lookup = (event: FormEvent) => {
    event.preventDefault();
    const digits = phone.replace(/\D/g, '').slice(-10);
    if (digits.length !== 10) { setLookupError('Enter a 10-digit customer phone.'); return; }
    setLookupError(null);
    navigate(`/rewards/customers/${digits}`);
  };
  const error = lookupError || queryMessage(overviewQuery.error) || queryMessage(recentQuery.error);
  return (
    <ResourcePage
      title="Rewards"
      lede="Paid deals issue 10 points per complete ₹100 of the bid excluding fee. Each point is ₹0.50 and stays at the originating branch."
      action={<Link className="btn small secondary" to="/rewards/policy">Reward policy</Link>}
      onRefresh={() => Promise.all([overviewQuery.refetch(), recentQuery.refetch()])}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <div className="tabbar" role="tablist" aria-label="Rewards">
        <button type="button" role="tab" id="rewards-tab-branches" aria-controls="rewards-panel-branches" aria-selected={tab === 'branches'} onClick={() => setTab('branches')}>Branches</button>
        <button type="button" role="tab" id="rewards-tab-customers" aria-controls="rewards-panel-customers" aria-selected={tab === 'customers'} onClick={() => setTab('customers')}>Customers</button>
      </div>
      {tab === 'branches' ? (
        <section className="card rewards-panel" id="rewards-panel-branches" role="tabpanel" aria-labelledby="rewards-tab-branches">
          <h2 id="rewards-overview-heading">Branch totals</h2>
          <p className="muted">Open a store to see who earned points, which phone sale issued them, and remaining balances.</p>
          <div className="admin-stats">
            <div className="stat"><span>Issued points</span><strong>{pts(overview?.totals?.issuedPoints)}</strong></div>
            <div className="stat"><span>Redeemed points</span><strong>{pts(overview?.totals?.redeemedPoints)}</strong></div>
            <div className="stat"><span>Outstanding points</span><strong>{pts(overview?.totals?.outstandingPoints)}</strong></div>
            <div className="stat"><span>Outstanding value</span><strong>{rupees(overview?.totals?.outstandingValuePaise)}</strong></div>
          </div>
          <DataTable
            headers={['Branch', 'Customers', 'Issued', 'Redeemed', 'Outstanding']}
            empty="No reward balances yet."
            onRowClick={(index) => {
              const branchId = overview?.branches?.[index]?.branchId;
              if (branchId) navigate(`/rewards/branches/${branchId}`);
            }}
            rows={(overview?.branches ?? []).map((row) => [
              row.branchName || row.branchId || '—',
              String(row.customerCount ?? 0),
              pts(row.issuedPoints),
              pts(row.redeemedPoints),
              `${pts(row.outstandingPoints)} (${rupees(row.outstandingValuePaise)})`,
            ])}
          />
        </section>
      ) : (
        <section className="card rewards-panel" id="rewards-panel-customers" role="tabpanel" aria-labelledby="rewards-tab-customers">
          <h2 id="rewards-customers-heading">Customers</h2>
          <p className="muted">Open a customer for earned, redeemed and remaining points, plus the phone sale that issued them.</p>
          <form className="admin-tools" onSubmit={lookup}>
            <Field label="Customer phone">
              <input value={phone} onChange={(event) => setPhone(event.target.value)} inputMode="numeric" autoComplete="off" />
            </Field>
            <button className="btn small" type="submit">Find customer</button>
          </form>
          <h3>Recent rewarded customers</h3>
          <DataTable
            headers={['Customer', 'Phone', 'Earned', 'Redeemed', 'Remaining', 'Last reward']}
            empty="No rewarded customers yet."
            rowCount={total}
            pageIndex={page - 1}
            onPageIndexChange={(next) => setPage(next + 1)}
            onRowClick={(index) => {
              const nextPhone = recent[index]?.phone;
              if (nextPhone) navigate(`/rewards/customers/${nextPhone}`);
            }}
            rows={recent.map((row) => [
              row.customerName || 'Customer',
              row.phone,
              pts(row.issuedPoints),
              pts(row.redeemedPoints),
              pts(row.outstandingPoints),
              row.lastRewardedAt ? new Date(row.lastRewardedAt).toLocaleDateString('en-IN') : '—',
            ])}
          />
        </section>
      )}
    </ResourcePage>
  );
}