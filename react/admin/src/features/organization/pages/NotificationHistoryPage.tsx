import { FormEvent, useState } from 'react';
import { useQueryClient } from '@tanstack/react-query';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, Field, ResourcePage } from '../components/ResourceKit';

export function NotificationHistoryPage() {
  const api = useOrganizationApi();
  const queryClient = useQueryClient();
  const historyQuery = useAdminList(['admin', 'notifications'], api.listNotificationHistory);
  const rows = historyQuery.items;
  const [audience, setAudience] = useState('all_vendors');
  const [title, setTitle] = useState('');
  const [body, setBody] = useState('');
  const [error, setError] = useState<string | null>(null);
  const send = async (event: FormEvent) => {
    event.preventDefault();
    try {
      await api.broadcastNotification({ audience, title, body, category: 'broadcast' });
      setTitle('');
      setBody('');
      await queryClient.invalidateQueries({ queryKey: ['admin', 'notifications'] });
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to send.');
    }
  };
  return (
    <ResourcePage title="Notifications" lede="Send an operational message to all stores, all users, or all vendors." backTo="/overview" backLabel="Back to overview" onRefresh={() => historyQuery.refetch()}>
      {error || queryMessage(historyQuery.error) ? <p className="form-error" role="alert">{error || queryMessage(historyQuery.error)}</p> : null}
      <div className="admin-grid">
        <form className="card" onSubmit={(event) => void send(event)}>
          <h3>Send notification</h3>
          <p className="muted">Retries do not duplicate deliveries.</p>
          <div className="form-grid">
            <Field label="Audience">
              <select value={audience} onChange={(event) => setAudience(event.target.value)}>
                <option value="all_stores">All stores</option>
                <option value="all_users">All users</option>
                <option value="all_vendors">All vendors</option>
              </select>
            </Field>
            <Field label="Title"><input value={title} onChange={(event) => setTitle(event.target.value)} required /></Field>
            <Field label="Message" span><textarea value={body} onChange={(event) => setBody(event.target.value)} required /></Field>
          </div>
          <button className="btn small" type="submit">Send notification</button>
        </form>
        <div className="card">
          <h3>Delivery scope</h3>
          <p className="muted">All stores, all users, or all vendors.</p>
        </div>
      </div>
      <div className="section">
        <DataTable
          headers={['Title', 'Audience', 'Role', 'Status']}
          empty="No notification deliveries yet."
          rows={rows.map((row) => [row.title || '—', row.audience || '—', row.recipientRole || '—', row.status || '—'])}
        />
      </div>
    </ResourcePage>
  );
}
