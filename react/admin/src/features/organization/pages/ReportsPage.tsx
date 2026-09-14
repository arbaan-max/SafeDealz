import { useEffect, useState } from 'react';
import { useOrganizationApi, type Branch, type Chain, type ReportTotals } from '../api/organizationApi';
import { Field, ResourcePage } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');

export function ReportsPage() {
  const api = useOrganizationApi();
  const [report, setReport] = useState<ReportTotals | null>(null);
  const [chains, setChains] = useState<Chain[]>([]);
  const [branches, setBranches] = useState<Branch[]>([]);
  const [from, setFrom] = useState('');
  const [to, setTo] = useState('');
  const [chainId, setChainId] = useState('');
  const [branchId, setBranchId] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [csv, setCsv] = useState('');
  const filters = () => ({ from, to, chainId, branchId });
  const load = () => void api.getReports(filters()).then(setReport).catch((caught: Error) => setError(caught.message));
  useEffect(() => {
    void api.getReports().then(setReport).catch((caught: Error) => setError(caught.message));
    void api.listChains().then(setChains).catch(() => setChains([]));
    void api.listBranches().then(setBranches).catch(() => setBranches([]));
  }, [api]);
  const empty = report && (report.auctionConversion?.started || 0) === 0 && (report.paidValuePaise || 0) === 0;
  const conversion = report?.auctionConversion;
  const rate = conversion && conversion.started ? `${((conversion.accepted / conversion.started) * 100).toFixed(1)}%` : '—';
  return (
    <ResourcePage title="Reports" lede="Auction conversion, paid value, pickups, wallet movements and branch rewards." backTo="/overview" backLabel="Back to overview">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="admin-tools" onSubmit={(event) => { event.preventDefault(); load(); }}>
        <Field label="From"><input type="date" value={from} onChange={(event) => setFrom(event.target.value)} /></Field>
        <Field label="To"><input type="date" value={to} onChange={(event) => setTo(event.target.value)} /></Field>
        <Field label="Chain">
          <select value={chainId} onChange={(event) => setChainId(event.target.value)}>
            <option value="">All chains</option>
            {chains.map((chain) => <option key={chain.id} value={chain.id}>{chain.name}</option>)}
          </select>
        </Field>
        <Field label="Branch">
          <select value={branchId} onChange={(event) => setBranchId(event.target.value)}>
            <option value="">All assigned branches</option>
            {branches.map((branch) => <option key={branch.id} value={branch.id}>{branch.name}</option>)}
          </select>
        </Field>
        <button className="btn small" type="submit">Apply filters</button>
        <button className="btn small secondary" type="button" onClick={() => void api.exportReports(filters()).then((file) => setCsv(file.csv)).catch((caught: Error) => setError(caught.message))}>Download report</button>
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
            <p className="muted">Accepted {rupees(report.acceptedValuePaise)} · Wallet movements {rupees(report.walletMovementsPaise)} · Rewards issued {report.rewardIssuedPoints ?? 0} pts</p>
          </div>
        </>
      ) : null}
      {csv ? <pre>{csv}</pre> : null}
    </ResourcePage>
  );
}
