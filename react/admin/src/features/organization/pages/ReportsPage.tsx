import { useState } from 'react';
import { useAdminList, useAdminQuery, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ResourcePage, downloadCsv } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const periodRange = (period: string, chainId = '', branchId = '') => {
  const to = new Date();
  const from = new Date();
  if (period === 'Today') from.setHours(0, 0, 0, 0);
  else if (period === 'This week') from.setDate(from.getDate() - 7);
  else from.setDate(from.getDate() - 30);
  return { from: from.toISOString(), to: to.toISOString(), chainId, branchId };
};

export function ReportsPage() {
  const api = useOrganizationApi();
  const [period, setPeriod] = useState('This week');
  const [chainId, setChainId] = useState('');
  const [branchId, setBranchId] = useState('');
  const [applied, setApplied] = useState(() => periodRange('This week'));
  const reportQuery = useAdminQuery(['admin', 'reports', applied], () => api.getReports(applied));
  const chainsQuery = useAdminList(['admin', 'chains'], api.listChains);
  const branchesQuery = useAdminList(['admin', 'branches'], api.listBranches);
  const report = reportQuery.data;
  const chains = chainsQuery.items;
  const branches = branchesQuery.items;
  const error = queryMessage(reportQuery.error);
  const empty = report && (report.auctionConversion?.started || 0) === 0 && (report.paidValuePaise || 0) === 0 && !(report.branches || []).some((row) => row.auctions || row.paidDeals);
  const conversion = report?.auctionConversion;
  const started = conversion?.started ?? 0;
  const accepted = conversion?.accepted ?? 0;
  const rate = started ? `${((accepted / started) * 100).toFixed(1)}%` : '—';
  return (
    <ResourcePage title="Reports" lede="Auction conversion, paid value, pickups, wallet movements and branch rewards." backTo="/overview" backLabel="Back to overview" onRefresh={() => Promise.all([reportQuery.refetch(), chainsQuery.refetch(), branchesQuery.refetch()])}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="admin-tools" onSubmit={(event) => { event.preventDefault(); setApplied(periodRange(period, chainId, branchId)); }}>
        <label className="field">Period
          <select value={period} onChange={(event) => setPeriod(event.target.value)} aria-label="Period">
            <option>Today</option><option>This week</option><option>This month</option>
          </select>
        </label>
        <label className="field">Chain
          <select value={chainId} onChange={(event) => setChainId(event.target.value)} aria-label="Chain">
            <option value="">All chains</option>
            {chains.map((chain) => <option key={chain.id} value={chain.id}>{chain.name}</option>)}
          </select>
        </label>
        <label className="field">Branch
          <select value={branchId} onChange={(event) => setBranchId(event.target.value)} aria-label="Branch">
            <option value="">All branches</option>
            {branches.map((branch) => <option key={branch.id} value={branch.id}>{branch.name}</option>)}
          </select>
        </label>
        <div className="admin-tools-actions">
          <button className="btn small" type="submit">Apply filters</button>
          <button className="btn small" type="button" onClick={() => {
            const rows = report?.branches ?? [];
            downloadCsv('safedealz-report.csv', [
              ['Metric', 'Value'],
              ['Auction conversion', rate],
              ['Paid value', rupees(report?.paidValuePaise)],
              ['Pickups', report?.pickupCount ?? 0],
              ['Redeemed value', rupees(report?.billingReconciliation?.rewardOutstandingValuePaise)],
              [],
              ['Branch', 'Auctions', 'Paid deals', 'Rewards redeemed', 'Invoices'],
              ...rows.map((row) => [row.branchName || '', row.auctions ?? 0, row.paidDeals ?? 0, rupees(row.rewardsRedeemedPaise), row.invoices ?? 0]),
            ]);
          }}>Download report</button>
        </div>
      </form>
      {empty ? <p className="empty-state" role="status">No results for this period and scope.</p> : null}
      {report && !empty ? (
        <>
          <div className="admin-stats">
            <div className="stat"><span>Auction conversion</span><strong>{rate}</strong></div>
            <div className="stat"><span>Paid value</span><strong>{rupees(report.paidValuePaise)}</strong></div>
            <div className="stat"><span>Pickups</span><strong>{report.pickupCount ?? 0}</strong></div>
            <div className="stat"><span>Redeemed value</span><strong>{rupees(report.billingReconciliation?.rewardOutstandingValuePaise)}</strong></div>
          </div>
          <div className="card">
            <h3>Branch reconciliation</h3>
            <p className="muted" style={{ margin: '6px 0 16px' }}>Match SafeDealz reward discounts with store invoice references.</p>
            <DataTable
              headers={['Branch', 'Auctions', 'Paid deals', 'Rewards redeemed', 'Invoices']}
              empty="No branch rows for this period."
              rows={(report.branches ?? []).map((row) => [row.branchName || '—', String(row.auctions ?? 0), String(row.paidDeals ?? 0), rupees(row.rewardsRedeemedPaise), String(row.invoices ?? 0)])}
            />
          </div>
        </>
      ) : null}
    </ResourcePage>
  );
}
