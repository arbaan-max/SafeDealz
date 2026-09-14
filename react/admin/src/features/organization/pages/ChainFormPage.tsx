import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useOrganizationApi, type Chain } from '../api/organizationApi';
import { Field, ResourceForm } from '../components/ResourceKit';

const blank = { name: '', code: '', contactName: '', contactEmail: '', contactPhone: '', active: true };

export function ChainFormPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [form, setForm] = useState(blank);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    if (!id) return;
    void api.listChains().then((chains) => {
      const chain = chains.find((item) => item.id === id);
      if (chain) setForm({ name: chain.name, code: chain.code, contactName: chain.contactName ?? '', contactEmail: chain.contactEmail ?? '', contactPhone: chain.contactPhone ?? '', active: chain.active });
    }).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const set = (key: keyof typeof blank, value: string | boolean) => setForm((current) => ({ ...current, [key]: value }));
  return (
    <ResourceForm title={id ? 'Edit chain' : 'Create chain'} backTo="/chains" backLabel="Back to chains" error={error} busy={false} onSubmit={async () => {
      try {
        const payload: Partial<Chain> = form;
        if (id) await api.updateChain(id, payload); else await api.createChain(payload);
        navigate('/chains');
      } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to save chain.'); }
    }}>
      <Field label="Chain name"><input value={form.name} onChange={(event) => set('name', event.target.value)} required /></Field>
      <Field label="Chain code"><input value={form.code} onChange={(event) => set('code', event.target.value)} required /></Field>
      <Field label="Contact person"><input value={form.contactName} onChange={(event) => set('contactName', event.target.value)} /></Field>
      <Field label="Contact email"><input type="email" value={form.contactEmail} onChange={(event) => set('contactEmail', event.target.value)} /></Field>
      <Field label="Contact phone"><input value={form.contactPhone} onChange={(event) => set('contactPhone', event.target.value)} /></Field>
      <Field label="Status">
        <select value={form.active ? 'Active' : 'Inactive'} onChange={(event) => set('active', event.target.value === 'Active')}>
          <option>Active</option><option>Inactive</option>
        </select>
      </Field>
    </ResourceForm>
  );
}
