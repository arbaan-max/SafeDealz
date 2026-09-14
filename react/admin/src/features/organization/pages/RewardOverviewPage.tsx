import { FormEvent, useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useOrganizationApi, type RewardOverview } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';

const pts = (value?: number) => `${(value ?? 0).toLocaleString('en-IN')} pts`;
const rupees = (paise?: number) => `₹${((paise ?? 0) / 100).toLocaleString('en-IN')}`;

export function RewardOverviewPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [overview, setOverview] = useState<RewardOverview | null>(null);
  const [phone, setPhone] = useState('');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.getRewardOverview().then(setOverview).catch((caught: Error) => setError(caught.message)); }, [api]);
  const lookup = (event: FormEvent) => {
    event.preventDefault();
    const digits = phone.replace(/\D/g, '').slice(-10);
    if (digits.length !== 10) { setError('Enter a 10-digit customer phone.'); return; }
    navigate(`/rewards/customers/${digits}`);
  };
  return (
    <ResourcePage
      title="Rewards"
      lede="Paid deals issue 10 points per complete ₹100 of the bid excluding fee. Each point is ₹0.50 and stays at the originating branch."
      action={<Link to="/rewards/policy">Reward policy</Link>}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <p>Issued {pts(overview?.totals?.issuedPoints)} · Redeemed {pts(overview?.totals?.redeemedPoints)} · Outstanding {pts(overview?.totals?.outstandingPoints)} ({rupees(overview?.totals?.outstandingValuePaise)})</p>
      <form className="resource-form" onSubmit={lookup}>
        <label className="field">Customer phone
          <input value={phone} onChange={(event) => setPhone(event.target.value)} inputMode="numeric" autoComplete="off" />
        </label>
        <button className="login-button" type="submit">Find customer</button>
      </form>
      <DataTable
        headers={['Branch', 'Issued', 'Redeemed', 'Outstanding', '']}
        empty="No reward balances yet."
        rows={(overview?.branches ?? []).map((row) => [
          row.branchName || row.branchId || '—',
          pts(row.issuedPoints),
          pts(row.redeemedPoints),
          `${pts(row.outstandingPoints)} (${rupees(row.outstandingValuePaise)})`,
          row.branchId ? <Link key={row.branchId} to="/rewards/policy">Policy</Link> : '—',
        ])}
      />
    </ResourcePage>
  );
}
