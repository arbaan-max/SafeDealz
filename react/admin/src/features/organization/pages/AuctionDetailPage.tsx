import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useOrganizationApi, type AuctionRound, type BidRow } from '../api/organizationApi';
import { ResourcePage } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');

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
  return (
    <ResourcePage title="Auction detail" lede="Bid table for this round. Customer KYC stays hidden unless opened from an authorized deal screen." action={<Link className="back-link" to="/auctions">Back to auctions</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {round ? <p>Round {round.roundNumber} · {round.status?.replaceAll('_', ' ')} · Highest {rupees(round.highestAmountPaise)}</p> : null}
      {round?.declineReason ? <p>{round.declineReason}</p> : null}
      <p><Link to="/support">Open support</Link></p>
      <ul>
        {bids.map((bid) => (
          <li key={bid.id}>{rupees(bid.amountPaise)} · {bid.status} · fee {rupees(bid.feePaise)}</li>
        ))}
      </ul>
    </ResourcePage>
  );
}
