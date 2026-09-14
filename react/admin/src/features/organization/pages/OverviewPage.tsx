import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type OverviewMetrics } from '../api/organizationApi';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');

export function OverviewPage() {
  const auth = useAuth();
  const api = useOrganizationApi();
  const [metrics, setMetrics] = useState<OverviewMetrics | null>(null);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void api.getOverview().then(setMetrics).catch((caught: Error) => setError(caught.message));
  }, [api]);
  const scoped = auth.account?.role === 'admin';
  const attention = metrics?.needsAttention ?? [];
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
        <Link className="stat" to="/payments"><span>Completed value</span><strong>{rupees(metrics?.completedValuePaise)}</strong><small>View details</small></Link>
        <Link className="stat" to="/payments"><span>Payment exceptions</span><strong>{metrics?.paymentExceptions ?? '—'}</strong><small>View details</small></Link>
      </div>
      <div className="admin-grid">
        <div className="card">
          <div className="admin-title" style={{ marginBottom: 12 }}>
            <h3>Exchange activity</h3>
            <Link className="textlink" to="/reports">View report</Link>
          </div>
          <small className="muted">Completed paid value</small>
          <h2 style={{ marginTop: 6 }}>{rupees(metrics?.completedValuePaise)}</h2>
        </div>
        <div className="card">
          <h3>Needs attention</h3>
          {attention.length ? attention.map((item) => (
            <Link className="listrow" key={`${item.kind}-${item.id}`} to={item.kind === 'payment' ? '/payments' : '/branches'}>
              <span><strong>{item.label}</strong><small>{item.kind === 'payment' ? 'Review provider status' : 'Bank beneficiary not verified'}</small></span>
            </Link>
          )) : <p className="empty-state" role="status">No payment or branch-setup issues.</p>}
        </div>
      </div>
    </section>
  );
}
