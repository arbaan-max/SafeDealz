import { useEffect, useState } from 'react';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi } from '../api/organizationApi';
import { Field, ResourceForm } from '../components/ResourceKit';

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
    <ResourceForm
      title="Auction timers"
      backTo="/overview"
      backLabel="Back to overview"
      error={error}
      busy={false}
      onSubmit={async () => {
        if (!canWrite) { setError('Only Super Admin can change auction timers.'); return; }
        try {
          const saved = await api.updateSettings({ biddingMinutes, acceptanceMinutes });
          setBiddingMinutes(saved.biddingMinutes);
          setAcceptanceMinutes(saved.acceptanceMinutes);
        } catch (caught) {
          setError(caught instanceof Error ? caught.message : 'Unable to save settings.');
        }
      }}
    >
      <p className="lede">A20 values apply when the next auction round starts. Active deadlines stay unchanged.</p>
      <Field label="Vendor bidding duration (minutes)">
        <input
          type="number"
          min={1}
          max={30}
          value={biddingMinutes}
          onChange={(event) => setBiddingMinutes(Number(event.target.value))}
          required
          readOnly={!canWrite}
        />
      </Field>
      <Field label="Manager acceptance duration (minutes)">
        <input
          type="number"
          min={1}
          max={60}
          value={acceptanceMinutes}
          onChange={(event) => setAcceptanceMinutes(Number(event.target.value))}
          required
          readOnly={!canWrite}
        />
      </Field>
    </ResourceForm>
  );
}
