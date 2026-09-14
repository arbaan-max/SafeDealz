import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type WalletDetail } from '../api/organizationApi';
import { ResourcePage } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : 'Hidden');
const signed = (type?: string, paise?: number) => {
  const amount = rupees(paise);
  if (amount === 'Hidden') return amount;
  return type === 'reserve' || type === 'commit' ? `-${amount}` : `+${amount}`;
};
const label = (type?: string) => ({ credit: 'Credit', reserve: 'Reserve', release: 'Release', commit: 'Paid' }[type ?? ''] ?? 'Movement');

export function VendorWalletPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const { account } = useAuth();
  const superAdmin = account?.role === 'super_admin';
  const [wallet, setWallet] = useState<WalletDetail | null>(null);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    if (!id) return;
    void api.getVendorWallet(id).then(setWallet).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  return (
    <ResourcePage
      eyebrow="A14"
      title="Vendor wallet"
      lede={superAdmin ? 'Immutable paise ledger. Available, reserved and processing never come from the client.' : 'Admin can confirm the vendor exists. Global balances stay Super Admin-only.'}
      action={<Link className="back-link" to="/vendors">Back to vendors</Link>}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {wallet ? (
        <>
          <p>Available {rupees(wallet.availablePaise)} · Reserved {rupees(wallet.reservedPaise)} · Recharge processing {rupees(wallet.processingPaise)} · Payments processing {rupees(wallet.paymentsProcessingPaise)}</p>
          {(wallet.reservations ?? []).length ? (
            <ul>
              {(wallet.reservations ?? []).map((hold) => (
                <li key={hold.id}>{rupees(hold.amountPaise)} held · {hold.reason || 'Hold'}</li>
              ))}
            </ul>
          ) : <p className="empty-state" role="status">No active holds.</p>}
          {(wallet.ledger ?? []).length ? (
            <div className="table-wrap">
              <table>
                <thead><tr><th>Type</th><th>Movement</th><th>Available after</th><th>Reserved after</th></tr></thead>
                <tbody>
                  {(wallet.ledger ?? []).map((entry) => (
                    <tr key={entry.id}>
                      <td>{label(entry.type)}</td>
                      <td>{signed(entry.type, entry.amountPaise)}</td>
                      <td>{rupees(entry.availableAfterPaise)}</td>
                      <td>{rupees(entry.reservedAfterPaise)}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          ) : <p className="empty-state" role="status">Ledger is hidden for this role.</p>}
        </>
      ) : null}
    </ResourcePage>
  );
}
