import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi, type PaymentInstruction } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const label = (status?: string) => ({
  processing: 'Processing',
  paid: 'Paid',
  needs_attention: 'Needs attention',
  unknown: 'Unknown',
  ready_for_transfer: 'Ready',
  awaiting_customer_verification: 'Awaiting KYC',
}[status ?? ''] ?? status ?? 'Payment');

export function PaymentListPage() {
  const api = useOrganizationApi();
  const [payments, setPayments] = useState<PaymentInstruction[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listPayments().then(setPayments).catch((caught: Error) => setError(caught.message)); }, [api]);
  return (
    <ResourcePage eyebrow="A12" title="Payments" lede="Store payouts start automatically after customer verification. Duplicate provider callbacks cannot pay twice. There is no approve-payout action.">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={['Status', 'Store amount', 'Fee', 'Beneficiary', '']}
        empty="No payment instructions yet."
        rows={payments.map((payment) => [
          label(payment.status),
          rupees(payment.amountPaise),
          rupees(payment.feePaise),
          payment.beneficiaryName || payment.accountNumberMasked || '—',
          <Link key={`${payment.id}-open`} to={`/payments/${payment.id}`}>Open</Link>,
        ])}
      />
    </ResourcePage>
  );
}
