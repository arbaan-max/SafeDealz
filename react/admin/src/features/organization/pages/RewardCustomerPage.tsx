import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useOrganizationApi, type CustomerRewards } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';

const pts = (value?: number) => `${(value ?? 0).toLocaleString('en-IN')} pts`;
const rupees = (paise?: number) => `₹${((paise ?? 0) / 100).toLocaleString('en-IN')}`;

export function RewardCustomerPage() {
  const api = useOrganizationApi();
  const { phone = '' } = useParams();
  const [record, setRecord] = useState<CustomerRewards | null>(null);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.getCustomerRewards(phone).then(setRecord).catch((caught: Error) => setError(caught.message)); }, [api, phone]);
  return (
    <ResourcePage
      title={record?.customerName ? `${record.customerName} rewards` : 'Customer rewards'}
      lede="Balances stay branch-separated. Other branches cannot redeem these points. Redemption receipts appear after P19."
      action={<Link to="/rewards">Back to rewards</Link>}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <p>Phone {record?.phone || phone}</p>
      <DataTable
        headers={['Branch', 'Balance', 'Issued', 'Redeemed']}
        empty="No rewards at this branch."
        rows={(record?.balances ?? []).map((row) => [
          row.branchName || row.branchId || '—',
          `${pts(row.pointsBalance)} (${rupees(row.outstandingValuePaise)})`,
          pts(row.issuedPoints),
          pts(row.redeemedPoints),
        ])}
      />
      <h2>Ledger</h2>
      <DataTable
        headers={['Type', 'Points', 'Value', 'Policy', 'Reference']}
        empty="No earn or redemption entries yet."
        rows={(record?.entries ?? []).map((entry) => [
          entry.type || '—',
          pts(entry.points),
          rupees(entry.valuePaise),
          entry.policyVersion ? `v${entry.policyVersion}` : '—',
          entry.invoiceNumber || entry.dealId || entry.reason || '—',
        ])}
      />
    </ResourcePage>
  );
}
