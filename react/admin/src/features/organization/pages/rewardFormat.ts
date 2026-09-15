import type { RewardLedgerEntry } from '../api/organizationApi';

export const pts = (value?: number) => `${(value ?? 0).toLocaleString('en-IN')} pts`;
export const rupees = (paise?: number) => `₹${((paise ?? 0) / 100).toLocaleString('en-IN')}`;
export const when = (value?: string) => (value ? new Date(value).toLocaleString('en-IN') : '—');
export const typeLabel = (type?: string) => {
  if (type === 'earn') return 'Earned';
  if (type === 'redeem') return 'Redeemed';
  if (type === 'reversal') return 'Reversed';
  return type || '—';
};
export const saleLabel = (entry: RewardLedgerEntry) => {
  if (entry.deviceModel) return [entry.deviceModel, entry.deviceStorage].filter(Boolean).join(' / ');
  if (entry.invoiceNumber) return `Invoice ${entry.invoiceNumber}`;
  return entry.reason || '—';
};
export const remainingPts = (entry: RewardLedgerEntry) => (
  entry.remainingPoints ?? entry.balanceAfter
);