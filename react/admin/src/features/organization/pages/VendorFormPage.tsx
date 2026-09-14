import { type FormEvent, useEffect, useMemo, useState } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { ArrowLeft } from 'lucide-react';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type Branch, type Chain, type VendorAccount } from '../api/organizationApi';
import { Field } from '../components/ResourceKit';

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
  const [submitting, setSubmitting] = useState(false);
  useEffect(() => {
    void Promise.all([api.listBranches(), api.listChains(), id ? api.listVendors() : Promise.resolve([] as VendorAccount[])]).then(([nextBranches, nextChains, vendors]) => {
      setBranches(nextBranches);
      setChains(nextChains);
      const vendor = vendors.find((item) => item.id === id);
      if (vendor) setForm({ displayName: vendor.displayName, email: vendor.email, phone: vendor.phone ?? '', password: '', active: vendor.active, assignedBranchIds: vendor.assignedBranchIds ?? [], linkExisting: false });
    }).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const chainName = useMemo(() => Object.fromEntries(chains.map((chain) => [chain.id, chain.name])), [chains]);
  const toggle = (branchId: string) => setForm((current) => ({
    ...current,
    assignedBranchIds: current.assignedBranchIds.includes(branchId)
      ? current.assignedBranchIds.filter((item) => item !== branchId)
      : [...current.assignedBranchIds, branchId],
  }));
  const set = (key: keyof typeof blank, value: string | boolean) => setForm((current) => ({ ...current, [key]: value }));
  const linking = form.linkExisting && !id;
  const save = async (event: FormEvent) => {
    event.preventDefault();
    setSubmitting(true);
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
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to save vendor.');
    } finally {
      setSubmitting(false);
    }
  };
  const branchPicker = (
    <div className="branch-picker">
      <h3>Assigned branches</h3>
      {branches.map((branch) => (
        <label key={branch.id} className="check">
          <input type="checkbox" checked={form.assignedBranchIds.includes(branch.id)} onChange={() => toggle(branch.id)} />
          <span>{chainName[branch.chainId] ? `${chainName[branch.chainId]} / ${branch.name}` : branch.name}</span>
        </label>
      ))}
    </div>
  );
  return (
    <section className="vendor-form-page" aria-labelledby="page-title">
      <div className="admin-title">
        <div className="admin-heading">
          <Link className="iconbtn admin-back" to="/vendors" aria-label="Back to vendors"><ArrowLeft size={16} /></Link>
          <div>
            <h1 id="page-title">Vendor onboarding/edit</h1>
            <p>Manage your exchange network with confidence.</p>
          </div>
        </div>
      </div>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="card vendor-form" onSubmit={(event) => void save(event)}>
        <h2>{id ? 'Edit vendor' : 'Create vendor'}</h2>
        <div className="gap" />
        <div className="form-grid">
          {!id ? (
            <label className="check span2">
              <input type="checkbox" checked={form.linkExisting} onChange={(event) => set('linkExisting', event.target.checked)} />
              <span>Link an existing vendor instead of creating a new account</span>
            </label>
          ) : null}
          {linking ? (
            <>
              <Field label="Email address"><input type="email" value={form.email} onChange={(event) => set('email', event.target.value)} required /></Field>
              {branchPicker}
            </>
          ) : (
            <>
              <Field label="Name"><input value={form.displayName} onChange={(event) => set('displayName', event.target.value)} required /></Field>
              <Field label="Email address"><input type="email" value={form.email} onChange={(event) => set('email', event.target.value)} required readOnly={Boolean(id)} /></Field>
              <Field label="Phone"><input value={form.phone} onChange={(event) => set('phone', event.target.value)} /></Field>
              {(!id || superAdmin) ? (
                <Field label={id ? 'New password (optional)' : 'Initial password'}>
                  <input type="password" value={form.password} onChange={(event) => set('password', event.target.value)} required={!id} minLength={12} autoComplete="new-password" />
                </Field>
              ) : null}
              {superAdmin ? (
                <Field label="Status">
                  <select value={form.active ? 'Active' : 'Inactive'} onChange={(event) => set('active', event.target.value === 'Active')}>
                    <option>Active</option><option>Inactive</option>
                  </select>
                </Field>
              ) : <p className="hint">Global vendor status and credentials are Super Admin only.</p>}
              {branchPicker}
            </>
          )}
        </div>
        <div className="gap" />
        <div className="row-actions">
          <button className="btn small" type="submit" disabled={submitting}>{submitting ? 'Saving…' : 'Save vendor'}</button>
          <Link className="btn small secondary" to="/vendors">Back to list</Link>
          {id && superAdmin ? (
            <button className="btn small secondary" type="button" onClick={async () => {
              try { await api.updateVendor(id, { active: !form.active }); navigate('/vendors'); }
              catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to update vendor status.'); }
            }}>{form.active ? 'Deactivate account' : 'Activate account'}</button>
          ) : null}
        </div>
      </form>
    </section>
  );
}
