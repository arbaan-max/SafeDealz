import { useNavigate, useParams } from 'react-router-dom';
import { useAdminQuery, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';
import { pts, remainingPts, rupees, saleLabel, typeLabel, when } from './rewardFormat';

export function RewardBranchPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const { branchId = '' } = useParams();
  const recordQuery = useAdminQuery(['admin', 'rewards', 'branch', branchId], () => api.getBranchRewards(branchId), { enabled: Boolean(branchId) });
  const record = recordQuery.data;
  const error = queryMessage(recordQuery.error);
  const customers = record?.customers ?? [];
  const entries = record?.entries ?? [];
  return (
    <ResourcePage
      title={record?.branchName ? `${record.branchName} rewards` : 'Branch rewards'}
      lede="Customers who earned points at this store, the phone sale that issued them, and remaining balances. Open a sale for device and auction details."
      backTo="/rewards"
      backLabel="Back to rewards"
      onRefresh={() => recordQuery.refetch()}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <div className="admin-stats">
        <div className="stat"><span>Customers earned</span><strong>{String(record?.customerCount ?? customers.length)}</strong></div>
        <div className="stat"><span>Customers redeemed</span><strong>{String(record?.redeemedCustomerCount ?? 0)}</strong></div>
        <div className="stat"><span>Earned</span><strong>{pts(record?.issuedPoints)}</strong></div>
        <div className="stat"><span>Remaining</span><strong>{pts(record?.outstandingPoints)}</strong></div>
      </div>
      <section className="card rewards-panel">
        <h2>Customers</h2>
        <p className="muted">Open a customer for earned, redeemed and remaining points across this store.</p>
        <DataTable
          headers={['Customer', 'Phone', 'Earned', 'Redeemed', 'Remaining']}
          empty="No customers have earned rewards at this store yet."
          onRowClick={(index) => {
            const phone = customers[index]?.customerPhone;
            if (phone) navigate(`/rewards/customers/${phone}`);
          }}
          rows={customers.map((row) => [
            row.customerName || 'Customer',
            row.customerPhone || '—',
            pts(row.issuedPoints),
            pts(row.redeemedPoints),
            `${pts(row.pointsBalance)} (${rupees(row.outstandingValuePaise)})`,
          ])}
        />
      </section>
      <section className="card rewards-panel" style={{ marginTop: 12 }}>
        <h2>Phone sales and redemptions</h2>
        <p className="muted">Earn rows are paid phone sales. Open one to see the complete device and auction record.</p>
        <DataTable
          headers={['When', 'Customer', 'Phone sale', 'Type', 'Points', 'Remaining after']}
          empty="No reward activity at this store yet."
          onRowClick={(index) => {
            const auctionRoundId = entries[index]?.auctionRoundId;
            if (auctionRoundId) navigate(`/auctions/${auctionRoundId}`);
          }}
          rows={entries.map((entry) => [
            when(entry.createdAt),
            <span key={`${entry.id || entry.dealId}-customer`}>
              <strong>{entry.customerName || 'Customer'}</strong>
              <small>{entry.customerPhone || '—'}</small>
            </span>,
            <span key={`${entry.id || entry.dealId}-sale`}>
              <strong>{saleLabel(entry)}</strong>
              {entry.saleAmountPaise ? <small>{rupees(entry.saleAmountPaise)}</small> : null}
            </span>,
            typeLabel(entry.type),
            pts(entry.points),
            remainingPts(entry) == null ? '—' : pts(remainingPts(entry)),
          ])}
        />
      </section>
    </ResourcePage>
  );
}