import { useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useAdminQuery, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';

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
  const walletQuery = useAdminQuery(['admin', 'wallets', id], () => api.getVendorWallet(id!), { enabled: Boolean(id) });
  const wallet = walletQuery.data;
  const error = queryMessage(walletQuery.error);
  return (
    <ResourcePage
      title="Vendor wallet"
      lede={superAdmin ? 'Balances are derived from recorded money movements. No arbitrary balance-edit control is provided.' : 'Admin can confirm the vendor exists. Global balances stay Super Admin-only.'}
      backTo="/vendors"
      backLabel="Back to vendors"
      onRefresh={() => walletQuery.refetch()}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {wallet ? (
        <>
          <div className="admin-stats">
            <div className="stat"><span>Available</span><strong>{rupees(wallet.availablePaise)}</strong></div>
            <div className="stat"><span>Reserved</span><strong>{rupees(wallet.reservedPaise)}</strong></div>
            <div className="stat"><span>Processing</span><strong>{rupees(wallet.processingPaise)}</strong></div>
            <div className="stat"><span>Currency</span><strong>INR</strong></div>
          </div>
          {(wallet.reservations ?? []).length ? (
            <ul>
              {(wallet.reservations ?? []).map((hold) => (
                <li key={hold.id}>{rupees(hold.amountPaise)} held · {hold.reason || 'Hold'}</li>
              ))}
            </ul>
          ) : <p className="empty-state" role="status">No active holds.</p>}
          {(wallet.ledger ?? []).length ? (
            <DataTable
              headers={['Type', 'Movement', 'Available after', 'Reserved after']}
              empty="Ledger is hidden for this role."
              rows={(wallet.ledger ?? []).map((entry) => [
                label(entry.type),
                signed(entry.type, entry.amountPaise),
                rupees(entry.availableAfterPaise),
                rupees(entry.reservedAfterPaise),
              ])}
            />
          ) : <p className="empty-state" role="status">Ledger is hidden for this role.</p>}
        </>
      ) : null}
    </ResourcePage>
  );
}
