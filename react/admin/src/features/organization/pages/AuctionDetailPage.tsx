import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { Image, Video } from 'lucide-react';
import { useOrganizationApi, type AuctionRound, type BidRow } from '../api/organizationApi';
import { ResourcePage, StatusBadge } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const slots = ['Video', 'Front', 'Back', 'Top', 'Bottom', 'Left', 'Right'];

export function AuctionDetailPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const [round, setRound] = useState<AuctionRound | null>(null);
  const [bids, setBids] = useState<BidRow[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    if (!id) return;
    void Promise.all([api.getAuction(id), api.listAuctionBids(id)]).then(([nextRound, nextBids]) => {
      setRound(nextRound);
      setBids(nextBids);
    }).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const imei = round?.device?.imei1 ? `IMEI ending ${String(round.device.imei1).slice(-4)}` : '';
  return (
    <ResourcePage title="Device and auction detail" lede="Bid table for this round. Customer KYC stays hidden unless opened from an authorized deal screen." backTo="/auctions" backLabel="Back to auctions">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {round ? (
        <>
          <div className="admin-grid">
            <div className="stack">
              <div className="card">
                <div className="between">
                  <div>
                    <h2>{round.device?.model || 'Auction'}</h2>
                    <p className="muted">{[round.branch?.name, imei].filter(Boolean).join(' / ') || 'Assigned store'}</p>
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
                {round.device?.imei1 ? <div className="detail"><span>IMEI 1</span><strong>Ending {String(round.device.imei1).slice(-4)}</strong></div> : null}
                {round.device?.imei2 ? <div className="detail"><span>IMEI 2</span><strong>Ending {String(round.device.imei2).slice(-4)}</strong></div> : null}
                {round.device?.platform === 'apple'
                  ? <div className="detail"><span>Battery health</span><strong>{round.device.batteryHealth ? `${round.device.batteryHealth}%` : '—'}</strong></div>
                  : <div className="detail"><span>RAM</span><strong>{round.device?.ram || '—'}</strong></div>}
                <div className="detail"><span>Device status</span><strong>{round.device?.status?.replaceAll('_', ' ') || '—'}</strong></div>
              </div>
              <div className="card">
                <h3>Store manager inspection</h3>
                <p className="muted">Manual physical-check answers, recorded independently from device diagnostics.</p>
                <div className="detail"><span>Condition</span><strong>Recorded at the store</strong></div>
              </div>
              <div className="card">
                <h3>Device Diagnostics report</h3>
                {round.device?.platform === 'apple'
                  ? <div className="notice" role="note">Not applicable for Apple. See the store manager inspection above.</div>
                  : <div className="notice" role="note">Independent tests from the Diagnostics app. These results never replace the manager’s answers.</div>}
              </div>
              <div className="card">
                <h3>Customer evidence</h3>
                <p className="muted" style={{ margin: '7px 0 0' }}>Protected evidence. Every reveal is audited. Identity images are not shown in this workspace.</p>
              </div>
            </div>
            <div className="stack">
              <div className="card tint">
                <h3>Current round</h3>
                <div className="detail"><span>Status</span><strong>{round.status?.replaceAll('_', ' ')}</strong></div>
                <div className="detail"><span>Highest offer</span><strong>{rupees(round.highestAmountPaise)}</strong></div>
                <div className="detail"><span>Selected vendor</span><strong>{round.winnerVendor?.displayName || '—'}</strong></div>
                <div className="gap" />
                <Link className="btn secondary" to="/payments">View payment</Link>
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
            <div className="table-wrap">
              <table>
                <thead><tr><th>Vendor</th><th>Base</th><th>Deductions</th><th>Final bid</th><th>Status</th></tr></thead>
                <tbody>
                  {bids.map((bid) => (
                    <tr key={bid.id}>
                      <td>{bid.vendorName || 'Vendor'}</td>
                      <td>{rupees(bid.basePaise)}</td>
                      <td>{rupees((bid.cosmeticDeductionPaise || 0) + (bid.batteryDeductionPaise || 0))}</td>
                      <td>{rupees(bid.amountPaise)}</td>
                      <td><StatusBadge tone={bid.status === 'committed' || bid.status === 'won' ? 'green' : 'gray'}>{bid.status}</StatusBadge></td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </section>
        </>
      ) : null}
    </ResourcePage>
  );
}
