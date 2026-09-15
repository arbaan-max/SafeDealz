import { Link, useParams } from 'react-router-dom';
import { Image, Video } from 'lucide-react';
import { useAdminList, useAdminQuery, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ResourcePage, StatusBadge } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const yesNo = (value?: boolean) => (value ? 'Yes' : 'No');
const outcomeLabel = (value?: string) => {
  if (!value) return '—';
  const label = value.replaceAll('_', ' ');
  return label.charAt(0).toUpperCase() + label.slice(1);
};
const slots = ['Video', 'Front', 'Back', 'Top', 'Bottom', 'Left', 'Right'];

export function AuctionDetailPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const roundQuery = useAdminQuery(['admin', 'auctions', id], () => api.getAuction(id!), { enabled: Boolean(id) });
  const bidsQuery = useAdminList(['admin', 'auctions', id, 'bids'], () => api.listAuctionBids(id!), { enabled: Boolean(id) });
  const round = roundQuery.data;
  const bids = bidsQuery.items;
  const error = queryMessage(roundQuery.error) || queryMessage(bidsQuery.error);
  const apple = round?.device?.platform === 'apple';
  const inspection = round?.device?.inspectionFields ?? [];
  const checks = round?.diagnostic?.checks ?? [];
  const purchased = round?.deal?.purchasedDevice;
  const paymentTo = round?.paymentId || round?.deal?.paymentInstructionId;
  return (
    <ResourcePage title="Device and auction detail" lede="Full device, inspection, customer and payment record for this round." backTo="/auctions" backLabel="Back to auctions" onRefresh={() => Promise.all([roundQuery.refetch(), bidsQuery.refetch()])}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {round ? (
        <>
          <div className="admin-grid">
            <div className="stack">
              <div className="card">
                <div className="between">
                  <div>
                    <h2>{round.device?.model || 'Auction'}</h2>
                    <p className="muted">{[round.branch?.name, round.device?.storage].filter(Boolean).join(' / ') || 'Assigned store'}</p>
                  </div>
                  <StatusBadge>Round {round.roundNumber ?? 1}</StatusBadge>
                </div>
                <div className="gap" />
                <div className="media-grid">
                  {slots.map((slot, index) => (
                    <div className="media-slot" key={slot}>{index ? <Image size={18} /> : <Video size={18} />}<small>{slot}</small></div>
                  ))}
                </div>
              </div>
              <div className="card">
                <h3>Device specifications</h3>
                <div className="detail"><span>Model</span><strong>{round.device?.model || '—'}</strong></div>
                <div className="detail"><span>Storage</span><strong>{round.device?.storage || '—'}</strong></div>
                <div className="detail"><span>IMEI 1</span><strong>{round.device?.imei1 || '—'}</strong></div>
                <div className="detail"><span>IMEI 2</span><strong>{round.device?.imei2 || '—'}</strong></div>
                {apple
                  ? <div className="detail"><span>Battery health</span><strong>{round.device?.batteryHealth ? `${round.device.batteryHealth}%` : '—'}</strong></div>
                  : <div className="detail"><span>RAM</span><strong>{round.device?.ram || '—'}</strong></div>}
                <div className="detail"><span>Device status</span><strong>{round.device?.status?.replaceAll('_', ' ') || '—'}</strong></div>
              </div>
              <div className="card">
                <h3>Store manager inspection</h3>
                <p className="muted">Manual physical-check answers recorded at the store.</p>
                {inspection.length ? inspection.map((field) => (
                  <div className="detail" key={field.key || field.label}><span>{field.label}</span><strong>{field.value || '—'}</strong></div>
                )) : <p className="empty-state" role="status">No inspection answers recorded yet.</p>}
              </div>
              <div className="card">
                <h3>Device Diagnostics report</h3>
                {apple
                  ? <div className="notice" role="note">Not applicable for Apple. Diagnostics app results are collected only for Android.</div>
                  : checks.length
                    ? checks.map((check) => (
                      <div className="detail" key={check.id || check.label}><span>{check.label}</span><strong>{outcomeLabel(check.outcome)}</strong></div>
                    ))
                    : <p className="empty-state" role="status">No Diagnostics app report imported for this Android device yet.</p>}
              </div>
              <div className="card">
                <h3>Customer details</h3>
                {round.deal ? (
                  <>
                    <div className="detail"><span>Name</span><strong>{round.deal.customerName || '—'}</strong></div>
                    <div className="detail"><span>Phone</span><strong>{round.deal.customerPhone || '—'}</strong></div>
                    <div className="detail"><span>OTP verified</span><strong>{yesNo(round.deal.otpVerified)}</strong></div>
                    <div className="detail"><span>ID captured</span><strong>{yesNo(round.deal.idCaptured)}</strong></div>
                    <div className="detail"><span>Portrait captured</span><strong>{yesNo(round.deal.portraitCaptured)}</strong></div>
                    {purchased ? (
                      <>
                        <div className="detail"><span>Purchased model</span><strong>{[purchased.model, purchased.storage, purchased.ram].filter(Boolean).join(' / ')}</strong></div>
                        <div className="detail"><span>Purchased IMEI 1</span><strong>{purchased.imei1 || '—'}</strong></div>
                        <div className="detail"><span>Purchased IMEI 2</span><strong>{purchased.imei2 || '—'}</strong></div>
                      </>
                    ) : null}
                  </>
                ) : <p className="empty-state" role="status">Customer details appear after the store accepts an offer.</p>}
              </div>
            </div>
            <div className="stack">
              <div className="card tint">
                <h3>Current round</h3>
                <div className="detail"><span>Status</span><strong>{round.status?.replaceAll('_', ' ')}</strong></div>
                <div className="detail"><span>Highest offer</span><strong>{rupees(round.highestAmountPaise)}</strong></div>
                <div className="detail"><span>Selected vendor</span><strong>{round.winnerVendor?.displayName || '—'}</strong></div>
                <div className="gap" />
                {paymentTo
                  ? <Link className="btn secondary" to={`/payments/${paymentTo}`}>View payment</Link>
                  : <p className="muted">Payment detail appears after an offer is accepted.</p>}
              </div>
              <div className="card">
                <h3>Round history</h3>
                <div className="timeline">
                  <div className="timeline-row"><span><strong>Round {round.roundNumber ?? 1}</strong><small>{round.status?.replaceAll('_', ' ')}</small></span></div>
                  {round.declineReason ? <div className="timeline-row"><span><strong>Re-auction</strong><small>{round.declineReason}</small></span></div> : null}
                </div>
              </div>
            </div>
          </div>
          <section className="section">
            <h3 style={{ marginBottom: 12 }}>Submitted bids</h3>
            <DataTable
              headers={['Vendor', 'Base', 'Deductions', 'Final bid', 'Status']}
              empty="No bids on this round yet."
              rows={bids.map((bid) => [
                bid.vendorName || 'Vendor',
                rupees(bid.basePaise),
                rupees((bid.cosmeticDeductionPaise || 0) + (bid.batteryDeductionPaise || 0)),
                rupees(bid.amountPaise),
                <StatusBadge key={`${bid.id}-status`} tone={bid.status === 'committed' || bid.status === 'won' ? 'green' : 'gray'}>{bid.status}</StatusBadge>,
              ])}
            />
          </section>
        </>
      ) : null}
    </ResourcePage>
  );
}
