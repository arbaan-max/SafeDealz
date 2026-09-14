import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type PaymentInstruction } from '../api/organizationApi';
import { ResourcePage, StatusBadge } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const label = (status?: string) => ({
  processing: 'Processing',
  paid: 'Paid',
  needs_attention: 'Needs attention',
  unknown: 'Unknown',
  ready_for_transfer: 'Ready',
}[status ?? ''] ?? status?.replaceAll('_', ' ') ?? 'Payment');

export function PaymentDetailPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const { account } = useAuth();
  const canReconcile = account?.role === 'super_admin' || account?.role === 'admin';
  const [payment, setPayment] = useState<PaymentInstruction | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const load = () => {
    if (!id) return;
    void api.getPayment(id).then(setPayment).catch((caught: Error) => setError(caught.message));
  };
  useEffect(() => { load(); }, [api, id]); // eslint-disable-line react-hooks/exhaustive-deps -- reload when payment id changes
  const run = async (action: () => Promise<PaymentInstruction>) => {
    setBusy(true);
    setError(null);
    try { setPayment(await action()); } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to update payment.'); }
    setBusy(false);
  };
  const tone = payment?.status === 'paid' ? 'green' : payment?.status === 'needs_attention' || payment?.status === 'unknown' ? 'amber' : 'sky';
  return (
    <ResourcePage title="Payment detail" lede="Refresh, retry a failed transfer, or reconcile an unknown provider outcome. Never approve a payout." backTo="/payments" backLabel="Back to payments">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {payment ? (
        <div className="admin-grid">
          <div className="card">
            <div className="between">
              <h2>{payment.providerTransferId || payment.dealReference || payment.id}</h2>
              <StatusBadge tone={tone}>{label(payment.status)}</StatusBadge>
            </div>
            <div className="gap" />
            <div className="money">{rupees(payment.amountPaise)}</div>
            <div className="detail"><span>Beneficiary</span><strong>{payment.beneficiaryName || '—'}{payment.branchName ? ` / ${payment.branchName}` : ''}</strong></div>
            <div className="detail"><span>Bank snapshot</span><strong>{[payment.accountNumberMasked, payment.ifsc].filter(Boolean).join(' · ') || '—'}</strong></div>
            <div className="detail"><span>Vendor</span><strong>{payment.vendorName || '—'}</strong></div>
            <div className="detail"><span>Deal reference</span><strong>{payment.dealReference || payment.dealId || '—'}</strong></div>
            <div className="detail"><span>Initiated by</span><strong>Manager acceptance</strong></div>
            <div className="detail"><span>Approval</span><strong>Not required</strong></div>
            <div className="gap" />
            <div className="row-actions">
              <button className="btn small" type="button" disabled={busy} onClick={load}>Refresh status</button>
              {payment.status === 'needs_attention' ? (
                <button className="btn small" type="button" disabled={busy} onClick={() => void run(() => api.retryPayment(payment.id!))}>Retry payout</button>
              ) : null}
              {canReconcile && payment.status === 'unknown' ? (
                <button className="btn small secondary" type="button" disabled={busy} onClick={() => void run(() => api.reconcilePayment(payment.id!, 'processed'))}>Reconcile</button>
              ) : null}
            </div>
          </div>
          <div className="card">
            <h3>Payment attempts</h3>
            <div className="timeline">
              {(payment.attempts ?? []).length ? (payment.attempts ?? []).map((attempt, index) => (
                <div className="timeline-row" key={`${attempt.event}-${index}`}>
                  <span><strong>{attempt.event || attempt.status}</strong><small>{attempt.note || attempt.status}</small></span>
                </div>
              )) : (
                <>
                  <div className="timeline-row"><span><strong>Instruction created</strong><small>One payout identity for this deal</small></span></div>
                  <div className="timeline-row"><span><strong>Awaiting provider confirmation</strong><small>Do not initiate a duplicate transfer</small></span></div>
                </>
              )}
            </div>
            <div className="notice" role="note">Unknown outcomes are reconciled before retrying. This is not an approval queue.</div>
          </div>
        </div>
      ) : null}
    </ResourcePage>
  );
}
