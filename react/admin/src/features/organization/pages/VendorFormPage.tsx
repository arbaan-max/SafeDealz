import { useEffect, useMemo, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type Branch, type Chain, type VendorAccount } from '../api/organizationApi';
import { Field, ResourceForm } from '../components/ResourceKit';

const blank = { displayName: '', email: '', phone: '', password: '', active: true, assignedBranchIds: [] as string[], linkExisting: false };

export function VendorFormPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const { account } = useAuth();
  const superAdmin = account?.role === 'super_admin';
  const navigate = useNavigate();
  const [form, setForm] = useState(blank);
  const [branches, setBranches] = useState<Branch[]>([]);
  const [chains, setChains] = useState<Chain[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void Promise.all([api.listBranches(), api.listChains(), id ? api.listVendors() : Promise.resolve([] as VendorAccount[])]).then(([nextBranches, nextChains, vendors]) => {
      setBranches(nextBranches);
      setChains(nextChains);
      const vendor = vendors.find((item) => item.id === id);
      if (vendor) setForm({ displayName: vendor.displayName, email: vendor.email, phone: vendor.phone ?? '', password: '', active: vendor.active, assignedBranchIds: vendor.assignedBranchIds ?? [], linkExisting: false });
    }).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const grouped = useMemo(() => chains.map((chain) => ({ chain, branches: branches.filter((branch) => branch.chainId === chain.id) })).filter((group) => group.branches.length), [branches, chains]);
  const toggle = (branchId: string) => setForm((current) => ({
    ...current,
    assignedBranchIds: current.assignedBranchIds.includes(branchId)
      ? current.assignedBranchIds.filter((item) => item !== branchId)
      : [...current.assignedBranchIds, branchId],
  }));
  const set = (key: keyof typeof blank, value: string | boolean) => setForm((current) => ({ ...current, [key]: value }));
  return (
    <ResourceForm title={id ? 'Edit vendor' : 'Create vendor'} backTo="/vendors" backLabel="Back to vendors" error={error} busy={false} extraActions={id && superAdmin ? (
      <button className="secondary-button" type="button" onClick={async () => {
        try { await api.updateVendor(id, { active: !form.active }); navigate('/vendors'); }
        catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to update vendor status.'); }
      }}>{form.active ? 'Deactivate account' : 'Activate account'}</button>
    ) : null} onSubmit={async () => {
      try {
        if (!id && form.linkExisting) {
          await api.linkVendor({ email: form.email, assignedBranchIds: form.assignedBranchIds });
        } else if (id) {
          const payload: Record<string, unknown> = { displayName: form.displayName, phone: form.phone, assignedBranchIds: form.assignedBranchIds };
          if (superAdmin) payload.active = form.active;
          if (superAdmin && form.password) payload.password = form.password;
          await api.updateVendor(id, payload);
        } else {
          await api.createVendor({ displayName: form.displayName, email: form.email, phone: form.phone, password: form.password, assignedBranchIds: form.assignedBranchIds, active: form.active });
        }
        navigate('/vendors');
      } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to save vendor.'); }
    }}>
      {!id ? (
        <label className="check-row">
          <input type="checkbox" checked={form.linkExisting} onChange={(event) => set('linkExisting', event.target.checked)} />
          Link an existing vendor instead of creating a new account
        </label>
      ) : null}
      {form.linkExisting && !id ? (
        <>
          <Field label="Existing vendor email"><input type="email" value={form.email} onChange={(event) => set('email', event.target.value)} required /></Field>
        </>
      ) : (
        <>
          <Field label="Vendor name"><input value={form.displayName} onChange={(event) => set('displayName', event.target.value)} required /></Field>
          <Field label="Email"><input type="email" value={form.email} onChange={(event) => set('email', event.target.value)} required readOnly={Boolean(id)} /></Field>
          <Field label="Phone"><input value={form.phone} onChange={(event) => set('phone', event.target.value)} /></Field>
          {(!id || superAdmin) ? (
            <Field label={id ? 'New password (optional, Super Admin)' : 'Initial password'}>
              <input type="password" value={form.password} onChange={(event) => set('password', event.target.value)} required={!id} minLength={12} />
            </Field>
          ) : null}
          {superAdmin ? (
            <Field label="Status">
              <select value={form.active ? 'Active' : 'Inactive'} onChange={(event) => set('active', event.target.value === 'Active')}>
                <option>Active</option><option>Inactive</option>
              </select>
            </Field>
          ) : <p className="hint">Global vendor status and credentials are Super Admin only.</p>}
        </>
      )}
      <fieldset className="field">
        <legend>Assigned branches</legend>
        <p className="hint">Choose branches across parent chains. One wallet stays with this vendor account.</p>
        {grouped.map(({ chain, branches: chainBranches }) => (
          <div key={chain.id}>
            <strong>{chain.name}</strong>
            {chainBranches.map((branch) => (
              <label key={branch.id} className="check-row">
                <input type="checkbox" checked={form.assignedBranchIds.includes(branch.id)} onChange={() => toggle(branch.id)} />
                {branch.name} ({branch.code})
              </label>
            ))}
          </div>
        ))}
      </fieldset>
    </ResourceForm>
  );
}
