import { useMemo, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, StatusBadge, downloadCsv } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const label = (status?: string) => ({
  processing: 'Processing',
  paid: 'Paid',
  needs_attention: 'Needs attention',
  unknown: 'Unknown',
  ready_for_transfer: 'Ready',
  awaiting_customer_verification: 'Awaiting KYC',
}[status ?? ''] ?? status?.replaceAll('_', ' ') ?? 'Payment');
const tone = (status?: string): 'sky' | 'green' | 'amber' | 'gray' => (
  status === 'paid' ? 'green' : status === 'needs_attention' || status === 'unknown' ? 'amber' : 'sky'
);

export function PaymentListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const paymentsQuery = useAdminList(['admin', 'payments'], api.listPayments);
  const payments = paymentsQuery.items;
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const visible = useMemo(() => payments.filter((payment) => {
    const haystack = `${payment.providerTransferId} ${payment.branchName} ${payment.vendorName} ${payment.deviceName} ${payment.status}`.toLowerCase();
    if (query && !haystack.includes(query.toLowerCase())) return false;
    if (status === 'Paid') return payment.status === 'paid';
    if (status === 'Pending') return payment.status !== 'paid';
    return true;
  }), [payments, query, status]);
  return (
    <ResourcePage title="Payments" lede="Store payouts start automatically after customer verification. Duplicate provider callbacks cannot pay twice. There is no approve-payout action." onRefresh={() => paymentsQuery.refetch()}>
      {queryMessage(paymentsQuery.error) ? <p className="form-error" role="alert">{queryMessage(paymentsQuery.error)}</p> : null}
      <ListTools placeholder="Search payment reference" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-payments.csv', [['Reference', 'Store', 'Vendor', 'Amount', 'Status'], ...visible.map((payment) => [payment.providerTransferId || payment.id || '', payment.branchName || '', payment.vendorName || '', rupees(payment.amountPaise), label(payment.status)])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>Paid</option><option>Pending</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Reference', 'Store', 'Vendor', 'Amount', 'Payment status']}
        empty="No payment instructions yet."
        onRowClick={(index) => navigate(`/payments/${visible[index].id}`)}
        rows={visible.map((payment) => [
          <span key={`${payment.id}-ref`}><strong>{payment.providerTransferId || payment.id}</strong><small>{payment.deviceName || payment.dealId || ''}</small></span>,
          payment.branchName || '—',
          payment.vendorName || '—',
          rupees(payment.amountPaise),
          <StatusBadge key={`${payment.id}-status`} tone={tone(payment.status)}>{label(payment.status)}</StatusBadge>,
        ])}
      />
    </ResourcePage>
  );
}
