import { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type OverviewMetrics } from '../api/organizationApi';
import { StatusBadge } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

export function OverviewPage() {
  const auth = useAuth();
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [metrics, setMetrics] = useState<OverviewMetrics | null>(null);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    let cancelled = false;
    void (async () => {
      await auth.refresh({ optional: true });
      if (cancelled) return;
      try { setMetrics(await api.getOverview()); } catch (caught) {
        if (!cancelled) setError(caught instanceof Error ? caught.message : 'Unable to load overview.');
      }
    })();
    return () => { cancelled = true; };
  }, [api, auth.refresh]); // eslint-disable-line react-hooks/exhaustive-deps -- optional refresh on first overview load
  const scoped = auth.account?.role === 'admin';
  const attention = metrics?.needsAttention ?? [];
  const series = metrics?.weeklyPaidPaise ?? [0, 0, 0, 0, 0, 0, 0];
  const peak = Math.max(...series, 1);
  return (
    <section aria-labelledby="page-title">
      <div className="admin-title">
        <div>
          <h1 id="page-title">Overview</h1>
          <p>{scoped ? 'Assigned-store operational totals. Needs Attention lists payment and branch-setup issues only.' : 'Manage your exchange network with confidence.'}</p>
        </div>
      </div>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <div className="admin-stats">
        <Link className="stat" to="/auctions"><span>Live auctions</span><strong>{metrics?.liveAuctions ?? '—'}</strong><small>View details</small></Link>
        <Link className="stat" to="/auctions"><span>Awaiting acceptance</span><strong>{metrics?.awaitingAcceptance ?? '—'}</strong><small>View details</small></Link>
        <Link className="stat" to="/payments"><span>Paid today</span><strong>{rupees(metrics?.paidTodayPaise ?? metrics?.completedValuePaise)}</strong><small>View details</small></Link>
        <Link className="stat" to="/payments"><span>Payment exceptions</span><strong>{metrics?.paymentExceptions ?? '—'}</strong><small>View details</small></Link>
      </div>
      <div className="admin-grid">
        <div className="card">
          <div className="between" style={{ marginBottom: 12 }}>
            <h3>Exchange activity</h3>
            <Link className="textlink" to="/reports">View report</Link>
          </div>
          <div className="between">
            <div>
              <small className="muted">Completed value this week</small>
              <h2 style={{ marginTop: 6 }}>{rupees(metrics?.completedValuePaise)}</h2>
            </div>
            <StatusBadge>This week</StatusBadge>
          </div>
          <div className="chart" role="img" aria-label="Completed paid value this week">
            {series.map((value, index) => (
              <div className="col" key={`${days[index]}-${index}`}>
                <i style={{ height: `${Math.max(8, Math.round((value / peak) * 100))}px` }} />
                <small>{days[index]}</small>
              </div>
            ))}
          </div>
          <small className="muted">Mon to Sun / completed exchange values</small>
        </div>
        <div className="card">
          <h3>Needs attention</h3>
          {attention.length ? attention.map((item) => (
            <Link className="listrow" key={`${item.kind}-${item.id}`} to={item.kind === 'payment' ? `/payments/${item.id}` : '/branches'}>
              <span><strong>{item.label}</strong><small>{item.kind === 'payment' ? 'Review provider status' : 'Bank beneficiary not verified'}</small></span>
            </Link>
          )) : <p className="empty-state" role="status">No payment or branch-setup issues.</p>}
        </div>
      </div>
      <section className="section">
        <div className="between" style={{ marginBottom: 12 }}>
          <h3>Recent auctions</h3>
          <Link className="textlink" to="/auctions">All auctions</Link>
        </div>
        {(metrics?.recentAuctions ?? []).length ? (
          <div className="table-wrap">
            <table>
              <thead><tr><th>Device</th><th>Branch</th><th>Status</th><th>Highest</th></tr></thead>
              <tbody>
                {(metrics?.recentAuctions ?? []).map((row) => (
                  <tr key={row.id} className="clickable-row" onClick={() => navigate(`/auctions/${row.id}`)}>
                    <td><strong>{row.device}</strong><small>{row.storage} / Round {row.roundNumber}</small></td>
                    <td>{row.branch || '—'}</td>
                    <td><StatusBadge tone={row.status === 'live' ? 'sky' : row.status === 'accepted' ? 'green' : 'amber'}>{row.status?.replaceAll('_', ' ')}</StatusBadge></td>
                    <td>{rupees(row.highestAmountPaise)}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ) : <p className="empty-state" role="status">No recent auctions.</p>}
      </section>
    </section>
  );
}
