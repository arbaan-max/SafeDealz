import { useEffect, useState } from 'react';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type RewardPolicy } from '../api/organizationApi';
import { Field, ResourceForm } from '../components/ResourceKit';

export function RewardPolicyPage() {
  const api = useOrganizationApi();
  const auth = useAuth();
  const [policy, setPolicy] = useState<RewardPolicy>({
    earnPointsPerHundredRupees: 10, pointValuePaise: 50, expiryDays: 0, eligibleCategories: ['accessories', 'value_added_services'],
  });
  const [error, setError] = useState<string | null>(null);
  const canWrite = auth.account?.role === 'super_admin';
  useEffect(() => {
    void api.getRewardPolicy().then((bundle) => setPolicy(bundle.current)).catch((caught: Error) => setError(caught.message));
  }, [api]);
  return (
    <ResourceForm
      title="Reward policy"
      backTo="/rewards"
      backLabel="Back to rewards"
      error={error}
      busy={false}
      onSubmit={async () => {
        if (!canWrite) { setError('Only Super Admin can publish a new policy version.'); return; }
        try {
          const saved = await api.publishRewardPolicy({
            earnPointsPerHundredRupees: policy.earnPointsPerHundredRupees,
            pointValuePaise: policy.pointValuePaise,
            expiryDays: policy.expiryDays,
            eligibleCategories: policy.eligibleCategories,
            redemptionScope: 'branch_only',
            note: 'Keep branch-only snapshots',
          });
          setPolicy(saved.current);
        } catch (caught) {
          setError(caught instanceof Error ? caught.message : 'Unable to save policy.');
        }
      }}
    >
      <p className="lede">A17 current version {policy.version ?? 1}. Earn rate and point value snapshot onto each paid-deal issue. Chain and multi-branch redemption stay inactive.</p>
      <Field label="Earn points per ₹100">
        <input
          type="number"
          min={1}
          value={policy.earnPointsPerHundredRupees ?? 10}
          onChange={(event) => setPolicy((current) => ({ ...current, earnPointsPerHundredRupees: Number(event.target.value) }))}
          readOnly={!canWrite}
        />
      </Field>
      <Field label="Point value (paise)">
        <input
          type="number"
          min={1}
          value={policy.pointValuePaise ?? 50}
          onChange={(event) => setPolicy((current) => ({ ...current, pointValuePaise: Number(event.target.value) }))}
          readOnly={!canWrite}
        />
      </Field>
      <Field label="Redemption scope">
        <select value="branch_only" disabled>
          <option value="branch_only">Branch only</option>
          <option value="chain">Chain (inactive)</option>
          <option value="multi_branch">Multi-branch (inactive)</option>
        </select>
      </Field>
      <p>Future chain and multi-branch settings cannot be enabled in this release. Existing reward history is retained when a later version is published.</p>
    </ResourceForm>
  );
}
