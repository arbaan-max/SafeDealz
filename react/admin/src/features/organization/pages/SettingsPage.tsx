import { useEffect, useState } from 'react';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi } from '../api/organizationApi';
import { Field, ResourcePage } from '../components/ResourceKit';

export function SettingsPage() {
  const api = useOrganizationApi();
  const auth = useAuth();
  const [biddingMinutes, setBiddingMinutes] = useState(3);
  const [acceptanceMinutes, setAcceptanceMinutes] = useState(10);
  const [error, setError] = useState<string | null>(null);
  const canWrite = auth.account?.role === 'super_admin';
  useEffect(() => {
    void api.getSettings().then((settings) => {
      setBiddingMinutes(settings.biddingMinutes);
      setAcceptanceMinutes(settings.acceptanceMinutes);
    }).catch((caught: Error) => setError(caught.message));
  }, [api]);
  return (
    <ResourcePage title="Settings" lede="These values apply when a new auction round starts.">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="card form-card" style={{ maxWidth: 820 }} onSubmit={(event) => {
        event.preventDefault();
        if (!canWrite) { setError('Only Super Admin can change auction timers.'); return; }
        void api.updateSettings({ biddingMinutes, acceptanceMinutes }).then((saved) => {
          setBiddingMinutes(saved.biddingMinutes);
          setAcceptanceMinutes(saved.acceptanceMinutes);
        }).catch((caught: Error) => setError(caught.message));
      }}>
        <h3>Auction timers</h3>
        <div className="form-grid">
          <Field label="Vendor bidding window (minutes)">
            <input type="number" min={1} max={30} value={biddingMinutes} onChange={(event) => setBiddingMinutes(Number(event.target.value))} required readOnly={!canWrite} />
          </Field>
          <Field label="Manager acceptance window (minutes)">
            <input type="number" min={1} max={60} value={acceptanceMinutes} onChange={(event) => setAcceptanceMinutes(Number(event.target.value))} required readOnly={!canWrite} />
          </Field>
        </div>
        <button className="btn small" type="submit">Save timer settings</button>
        <div className="notice" role="note">Changing a setting does not shorten or extend an auction that is already running.</div>
      </form>
    </ResourcePage>
  );
}
