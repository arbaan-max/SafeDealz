import { FormEvent, useEffect, useState } from 'react';
import { useOrganizationApi, type InboxNotification } from '../api/organizationApi';
import { DataTable, Field, ResourcePage } from '../components/ResourceKit';

export function NotificationHistoryPage() {
  const api = useOrganizationApi();
  const [rows, setRows] = useState<InboxNotification[]>([]);
  const [audience, setAudience] = useState('all_vendors');
  const [title, setTitle] = useState('');
  const [body, setBody] = useState('');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void api.listNotificationHistory().then(setRows).catch((caught: Error) => setError(caught.message));
  }, [api]);
  const send = async (event: FormEvent) => {
    event.preventDefault();
    try {
      await api.broadcastNotification({ audience, title, body, category: 'broadcast' });
      setTitle('');
      setBody('');
      const next = await api.listNotificationHistory();
      setRows(next);
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to send.');
    }
  };
  return (
    <ResourcePage eyebrow="S04" title="Notifications" lede="Delivery history uses the in-app test provider. Super Admin can target all users, stores, vendors, one store or one vendor. Retries do not duplicate deliveries.">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="resource-form" onSubmit={(event) => void send(event)}>
        <Field label="Audience">
          <select value={audience} onChange={(event) => setAudience(event.target.value)}>
            <option value="all_users">All users</option>
            <option value="all_stores">All stores</option>
            <option value="all_vendors">All vendors</option>
            <option value="store">One store</option>
            <option value="vendor">One vendor</option>
          </select>
        </Field>
        <Field label="Title"><input value={title} onChange={(event) => setTitle(event.target.value)} required /></Field>
        <Field label="Message"><input value={body} onChange={(event) => setBody(event.target.value)} required /></Field>
        <button className="login-button" type="submit">Send broadcast</button>
      </form>
      <DataTable
        headers={['Title', 'Audience', 'Role', 'Status']}
        empty="No notification deliveries yet."
        rows={rows.map((row) => [row.title || '—', row.audience || '—', row.recipientRole || '—', row.status || '—'])}
      />
    </ResourcePage>
  );
}
