import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type Branch, type Chain } from '../api/organizationApi';
import { Field, ResourceForm } from '../components/ResourceKit';

const blank = {
  chainId: '', name: '', code: '', address: '', city: '', contactName: '', contactPhone: '',
  beneficiaryName: '', accountNumber: '', ifsc: '', currentPassword: '', active: true,
};

export function BranchFormPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const auth = useAuth();
  const navigate = useNavigate();
  const [chains, setChains] = useState<Chain[]>([]);
  const [form, setForm] = useState(blank);
  const [masked, setMasked] = useState('');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void Promise.all([api.listBranches(), api.listChains()]).then(([branches, nextChains]) => {
      setChains(nextChains);
      if (!id) { if (nextChains[0]) setForm((current) => ({ ...current, chainId: nextChains[0].id })); return; }
      const branch = branches.find((item: Branch) => item.id === id);
      if (!branch) return;
      setMasked(branch.accountNumberMasked ?? '');
      setForm((current) => ({
        ...current,
        chainId: branch.chainId, name: branch.name, code: branch.code, address: branch.address ?? '', city: branch.city ?? '',
        contactName: branch.contactName ?? '', contactPhone: branch.contactPhone ?? '', beneficiaryName: branch.beneficiaryName ?? '',
        ifsc: branch.ifsc ?? '', active: branch.active,
      }));
    }).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const set = (key: keyof typeof blank, value: string | boolean) => setForm((current) => ({ ...current, [key]: value }));
  const canWrite = auth.account?.role === 'super_admin';
  return (
    <ResourceForm title={id ? 'Edit branch' : 'Add branch'} backTo="/branches" backLabel="Back to branches" error={error} busy={false} onSubmit={async () => {
      if (!canWrite) { setError('Only Super Admin can create or edit branches.'); return; }
      try {
        const payload: Record<string, unknown> = { ...form };
        if (id && !form.accountNumber) delete payload.accountNumber;
        if (id && !form.currentPassword) delete payload.currentPassword;
        if (id) await api.updateBranch(id, payload); else await api.createBranch(payload);
        navigate('/branches');
      } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to save branch.'); }
    }}>
      <Field label="Parent chain">
        <select value={form.chainId} onChange={(event) => set('chainId', event.target.value)} required disabled={!canWrite || Boolean(id)}>
          {chains.map((chain) => <option key={chain.id} value={chain.id}>{chain.name}</option>)}
        </select>
      </Field>
      <Field label="Branch name"><input value={form.name} onChange={(event) => set('name', event.target.value)} required readOnly={!canWrite} /></Field>
      <Field label="Branch code"><input value={form.code} onChange={(event) => set('code', event.target.value)} required readOnly={!canWrite} /></Field>
      <Field label="Address"><input value={form.address} onChange={(event) => set('address', event.target.value)} readOnly={!canWrite} /></Field>
      <Field label="City"><input value={form.city} onChange={(event) => set('city', event.target.value)} readOnly={!canWrite} /></Field>
      <Field label="Store contact"><input value={form.contactName} onChange={(event) => set('contactName', event.target.value)} readOnly={!canWrite} /></Field>
      <Field label="Contact phone"><input value={form.contactPhone} onChange={(event) => set('contactPhone', event.target.value)} readOnly={!canWrite} /></Field>
      <Field label="Beneficiary business name"><input value={form.beneficiaryName} onChange={(event) => set('beneficiaryName', event.target.value)} required readOnly={!canWrite} /></Field>
      <Field label={id ? `Account number (${masked || 'masked'})` : 'Account number'}>
        <input value={form.accountNumber} onChange={(event) => set('accountNumber', event.target.value)} required={!id} readOnly={!canWrite} />
      </Field>
      <Field label="IFSC"><input value={form.ifsc} onChange={(event) => set('ifsc', event.target.value)} required readOnly={!canWrite} /></Field>
      {id && canWrite ? <Field label="Current password for bank changes"><input type="password" value={form.currentPassword} onChange={(event) => set('currentPassword', event.target.value)} /></Field> : null}
    </ResourceForm>
  );
}
