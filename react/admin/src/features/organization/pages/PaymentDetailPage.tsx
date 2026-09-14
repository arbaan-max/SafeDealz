import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type PaymentInstruction } from '../api/organizationApi';
import { ResourcePage } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');

export function PaymentDetailPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const { account } = useAuth();
  const canReconcile = account?.role === 'super_admin' || account?.role === 'admin';
  const [payment, setPayment] = useState<PaymentInstruction | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  useEffect(() => {
    if (!id) return;
    void api.getPayment(id).then(setPayment).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const load = () => {
    if (!id) return;
    void api.getPayment(id).then(setPayment).catch((caught: Error) => setError(caught.message));
  };
  const run = async (action: () => Promise<PaymentInstruction>) => {
    setBusy(true);
    setError(null);
    try { setPayment(await action()); } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to update payment.'); }
    setBusy(false);
  };
  return (
    <ResourcePage
      title="Payment detail"
      lede="Refresh, retry a failed transfer, or reconcile an unknown provider outcome. Never approve a payout."
      action={<Link className="back-link" to="/payments">Back to payments</Link>}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {payment ? (
        <>
          <p><strong>{payment.status?.replaceAll('_', ' ')}</strong></p>
          <p>Store amount {rupees(payment.amountPaise)} · Fee {rupees(payment.feePaise)}</p>
          <p>{payment.beneficiaryName} · {payment.accountNumberMasked} · {payment.ifsc}</p>
          {payment.providerTransferId ? <p>Provider {payment.providerTransferId}</p> : null}
          {(payment.attempts ?? []).length ? (
            <ul>
              {(payment.attempts ?? []).map((attempt, index) => (
                <li key={`${attempt.event}-${index}`}>{attempt.event} · {attempt.status}{attempt.note ? ` · ${attempt.note}` : ''}</li>
              ))}
            </ul>
          ) : null}
          <p>
            <button className="text-button" type="button" disabled={busy} onClick={load}>Refresh</button>
            {payment.status === 'needs_attention' ? (
              <button className="login-button" type="button" disabled={busy} onClick={() => void run(() => api.retryPayment(payment.id!))}>Retry payout</button>
            ) : null}
            {canReconcile && payment.status === 'unknown' ? (
              <>
                <button className="login-button" type="button" disabled={busy} onClick={() => void run(() => api.reconcilePayment(payment.id!, 'processed'))}>Mark processed</button>
                <button className="text-button" type="button" disabled={busy} onClick={() => void run(() => api.reconcilePayment(payment.id!, 'failed'))}>Mark failed</button>
              </>
            ) : null}
            <Link className="text-button" to="/support">Open support</Link>
          </p>
        </>
      ) : null}
    </ResourcePage>
  );
}
