import { useNavigate, useParams } from 'react-router-dom';
import { useAdminQuery, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';
import { pts, remainingPts, rupees, saleLabel, typeLabel, when } from './rewardFormat';

export function RewardCustomerPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const { phone = '' } = useParams();
  const recordQuery = useAdminQuery(['admin', 'rewards', 'customer', phone], () => api.getCustomerRewards(phone), { enabled: Boolean(phone) });
  const record = recordQuery.data;
  const error = queryMessage(recordQuery.error);
  const history = record?.entries?.length ? record.entries : record?.history ?? [];
  const issued = record?.issuedPoints ?? record?.balances?.reduce((sum, row) => sum + (row.issuedPoints || 0), 0);
  const redeemed = record?.redeemedPoints ?? record?.balances?.reduce((sum, row) => sum + (row.redeemedPoints || 0), 0);
  const remaining = record?.outstandingPoints ?? record?.balances?.reduce((sum, row) => sum + (row.pointsBalance || 0), 0);
  return (
    <ResourcePage
      title={record?.customerName ? `${record.customerName} rewards` : 'Customer rewards'}
      lede="Points stay at the issuing branch. Other branches cannot redeem these points. Open a phone sale to see the device and auction."
      backTo="/rewards?tab=customers"
      backLabel="Back to rewards"
      onRefresh={() => recordQuery.refetch()}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <p className="muted" style={{ marginBottom: 16 }}>Phone {record?.phone || phone}</p>
      <div className="admin-stats">
        <div className="stat"><span>Earned</span><strong>{pts(issued)}</strong></div>
        <div className="stat"><span>Redeemed</span><strong>{pts(redeemed)}</strong></div>
        <div className="stat"><span>Remaining</span><strong>{pts(remaining)}</strong></div>
        <div className="stat"><span>Redemptions</span><strong>{String(record?.redeemCount ?? history.filter((entry) => entry.type === 'redeem').length)}</strong></div>
      </div>
      <section className="card rewards-panel">
        <h2>Branch balances</h2>
        <p className="muted">Remaining points are redeemable only at the store that issued them.</p>
        <DataTable
          headers={['Branch', 'Remaining', 'Earned', 'Redeemed']}
          empty="No rewards at this branch."
          rows={(record?.balances ?? []).map((row) => [
            row.branchName || row.branchId || '—',
            `${pts(row.pointsBalance)} (${rupees(row.outstandingValuePaise)})`,
            pts(row.issuedPoints),
            pts(row.redeemedPoints),
          ])}
        />
      </section>
      <section className="card rewards-panel" style={{ marginTop: 12 }}>
        <h2>History</h2>
        <p className="muted">Each earn row is the phone sale that issued points. Open it for complete device and auction details.</p>
        <DataTable
          headers={['When', 'Type', 'Phone sale', 'Branch', 'Points', 'Remaining after']}
          empty="No earn or redemption entries yet."
          onRowClick={(index) => {
            const auctionRoundId = history[index]?.auctionRoundId;
            if (auctionRoundId) navigate(`/auctions/${auctionRoundId}`);
          }}
          rows={history.map((entry) => [
            when(entry.createdAt),
            typeLabel(entry.type),
            <span key={`${entry.id || entry.dealId || entry.invoiceNumber}-sale`}>
              <strong>{saleLabel(entry)}</strong>
              {entry.saleAmountPaise ? <small>{rupees(entry.saleAmountPaise)}</small> : null}
            </span>,
            entry.branchName || entry.branchId || '—',
            pts(entry.points),
            remainingPts(entry) == null ? '—' : pts(remainingPts(entry)),
          ])}
        />
      </section>
    </ResourcePage>
  );
}