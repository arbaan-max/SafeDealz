import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useOrganizationApi, type Branch, type ManagerAccount } from '../api/organizationApi';
import { Field, ResourceForm } from '../components/ResourceKit';

const blank = { displayName: '', email: '', phone: '', password: '', branchId: '', active: true };

export function ManagerFormPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [form, setForm] = useState(blank);
  const [branches, setBranches] = useState<Branch[]>([]);
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  useEffect(() => {
    void Promise.all([api.listBranches(), id ? api.listManagers() : Promise.resolve([] as ManagerAccount[])]).then(([nextBranches, managers]) => {
      setBranches(nextBranches);
      const manager = managers.find((item) => item.id === id);
      if (manager) setForm({ displayName: manager.displayName, email: manager.email, phone: manager.phone ?? '', password: '', branchId: manager.branchId, active: manager.active });
      else if (!id && nextBranches[0]) setForm((current) => ({ ...current, branchId: nextBranches[0].id }));
    }).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const set = (key: keyof typeof blank, value: string | boolean) => setForm((current) => ({ ...current, [key]: value }));
  const patch = async (body: Record<string, unknown>) => {
    if (!id) return;
    setBusy(true);
    try {
      await api.updateManager(id, body);
      navigate('/managers');
    } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to update manager.'); }
    finally { setBusy(false); }
  };
  return (
    <ResourceForm title={id ? 'Edit manager' : 'Create manager'} backTo="/managers" backLabel="Back to managers" error={error} busy={busy} extraActions={id ? (
      <>
        <button className="secondary-button" type="button" disabled={busy} onClick={() => void patch({ revokeSessions: true })}>Revoke sessions</button>
        <button className="secondary-button" type="button" disabled={busy} onClick={() => void patch({ active: !form.active })}>{form.active ? 'Deactivate' : 'Activate'}</button>
      </>
    ) : null} onSubmit={async () => {
      try {
        const payload: Record<string, unknown> = { ...form };
        if (id && !form.password) delete payload.password;
        if (id) await api.updateManager(id, payload);
        else await api.createManager(form);
        navigate('/managers');
      } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to save manager.'); }
    }}>
      <Field label="Manager name"><input value={form.displayName} onChange={(event) => set('displayName', event.target.value)} required /></Field>
      <Field label="Email"><input type="email" value={form.email} onChange={(event) => set('email', event.target.value)} required readOnly={Boolean(id)} /></Field>
      <Field label="Phone"><input value={form.phone} onChange={(event) => set('phone', event.target.value)} /></Field>
      <Field label="Branch">
        <select value={form.branchId} onChange={(event) => set('branchId', event.target.value)} required>
          <option value="" disabled>Select a branch</option>
          {branches.map((branch) => <option key={branch.id} value={branch.id}>{branch.name} ({branch.code})</option>)}
        </select>
      </Field>
      <Field label={id ? 'New password (optional)' : 'Initial password'}>
        <input type="password" value={form.password} onChange={(event) => set('password', event.target.value)} required={!id} minLength={12} />
      </Field>
      <Field label="Account status">
        <select value={form.active ? 'Active' : 'Inactive'} onChange={(event) => set('active', event.target.value === 'Active')}>
          <option>Active</option><option>Inactive</option>
        </select>
      </Field>
      <p className="hint">Managers at this branch can operate its transactions. Inactive accounts cannot log in, and revoked sessions end immediately.</p>
    </ResourceForm>
  );
}
