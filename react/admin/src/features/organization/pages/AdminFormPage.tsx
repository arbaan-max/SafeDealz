import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useOrganizationApi, type AdminAccount, type Branch } from '../api/organizationApi';
import { Field, ResourceForm } from '../components/ResourceKit';

const blank = { displayName: '', email: '', phone: '', password: '', active: true, assignedBranchIds: [] as string[] };

export function AdminFormPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [form, setForm] = useState(blank);
  const [branches, setBranches] = useState<Branch[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void Promise.all([api.listBranches(), id ? api.listAdmins() : Promise.resolve([] as AdminAccount[])]).then(([nextBranches, admins]) => {
      setBranches(nextBranches);
      const admin = admins.find((item) => item.id === id);
      if (admin) setForm({ displayName: admin.displayName, email: admin.email, phone: admin.phone ?? '', password: '', active: admin.active, assignedBranchIds: admin.assignedBranchIds ?? [] });
    }).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const toggle = (branchId: string) => setForm((current) => ({
    ...current,
    assignedBranchIds: current.assignedBranchIds.includes(branchId)
      ? current.assignedBranchIds.filter((item) => item !== branchId)
      : [...current.assignedBranchIds, branchId],
  }));
  return (
    <ResourceForm title={id ? 'Edit admin' : 'Create admin'} backTo="/admins" backLabel="Back to admins" error={error} busy={false} onSubmit={async () => {
      try {
        const payload: Record<string, unknown> = { ...form };
        if (id && !form.password) delete payload.password;
        if (id) await api.updateAdmin(id, payload);
        else await api.createAdmin(form);
        navigate('/admins');
      } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to save admin.'); }
    }}>
      <Field label="Admin name"><input value={form.displayName} onChange={(event) => setForm((current) => ({ ...current, displayName: event.target.value }))} required /></Field>
      <Field label="Email"><input type="email" value={form.email} onChange={(event) => setForm((current) => ({ ...current, email: event.target.value }))} required readOnly={Boolean(id)} /></Field>
      <Field label="Phone"><input value={form.phone} onChange={(event) => setForm((current) => ({ ...current, phone: event.target.value }))} /></Field>
      <Field label={id ? 'New password (optional)' : 'Initial password'}>
        <input type="password" value={form.password} onChange={(event) => setForm((current) => ({ ...current, password: event.target.value }))} required={!id} minLength={12} />
      </Field>
      <Field label="Status">
        <select value={form.active ? 'Active' : 'Inactive'} onChange={(event) => setForm((current) => ({ ...current, active: event.target.value === 'Active' }))}>
          <option>Active</option><option>Inactive</option>
        </select>
      </Field>
      <fieldset className="field">
        <legend>Assigned stores</legend>
        <p className="hint">Empty assignment grants no store access. A branch never implies its whole chain.</p>
        {branches.map((branch) => (
          <label key={branch.id} className="check-row">
            <input type="checkbox" checked={form.assignedBranchIds.includes(branch.id)} onChange={() => toggle(branch.id)} />
            {branch.name} ({branch.code})
          </label>
        ))}
      </fieldset>
    </ResourceForm>
  );
}
