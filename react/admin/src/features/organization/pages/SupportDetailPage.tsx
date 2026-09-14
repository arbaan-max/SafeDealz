import { FormEvent, useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type SupportTicket } from '../api/organizationApi';
import { Field, ResourcePage, StatusBadge } from '../components/ResourceKit';

export function SupportDetailPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const { account } = useAuth();
  const [ticket, setTicket] = useState<SupportTicket | null>(null);
  const [note, setNote] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  useEffect(() => {
    if (!id) return;
    void api.getTicket(id).then(setTicket).catch((caught: Error) => setError(caught.message));
  }, [api, id]);
  const run = async (action: () => Promise<SupportTicket>) => {
    setBusy(true);
    setError(null);
    try { setTicket(await action()); } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to update ticket.'); }
    setBusy(false);
  };
  const addNote = async (event: FormEvent) => {
    event.preventDefault();
    if (!id || !note.trim()) return;
    await run(() => api.addTicketNote(id, note.trim()));
    setNote('');
  };
  return (
    <ResourcePage title="Support case" lede="Chronological notes stay with the ticket. Resolution does not refund, retry payout or change ledgers." backTo="/support" backLabel="Back to support">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {ticket ? (
        <div className="admin-grid">
          <div className="card">
            <div className="between">
              <h2>SUP-{String(ticket.id || '').slice(-4).toUpperCase()}</h2>
              <StatusBadge tone={ticket.status === 'resolved' ? 'green' : ticket.status === 'investigating' ? 'amber' : 'sky'}>{ticket.status?.replaceAll('_', ' ')}</StatusBadge>
            </div>
            <div className="detail"><span>Raised by</span><strong>{ticket.creatorRole?.replaceAll('_', ' ')}</strong></div>
            <div className="detail"><span>Type</span><strong>{ticket.reasonCode?.replaceAll('_', ' ')}</strong></div>
            <div className="detail"><span>Reference</span><strong>{ticket.subjectType} {ticket.subjectId}</strong></div>
            <div className="gap" />
            <div className="row-actions">
              {account?.id ? <button className="btn small secondary" type="button" disabled={busy} onClick={() => void run(() => api.assignTicket(ticket.id!, account.id!))}>Assign to me</button> : null}
              {ticket.status !== 'resolved' ? <button className="btn small" type="button" disabled={busy} onClick={() => void run(() => api.updateTicketStatus(ticket.id!, 'resolved', 'Resolved without changing financial history.'))}>Resolve</button> : null}
            </div>
          </div>
          <div className="card">
            <h3>Notes</h3>
            <div className="timeline">
              {(ticket.notes ?? []).map((entry) => (
                <div className="timeline-row" key={entry.id || entry.createdAt}><span><strong>{entry.authorRole}</strong><small>{entry.body}</small></span></div>
              ))}
            </div>
            <form onSubmit={(event) => void addNote(event)}>
              <Field label="Add note"><input value={note} onChange={(event) => setNote(event.target.value)} required /></Field>
              <button className="btn small" type="submit" disabled={busy}>Save note</button>
            </form>
          </div>
        </div>
      ) : null}
    </ResourcePage>
  );
}
