import { FormEvent, useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type SupportTicket } from '../api/organizationApi';
import { Field, ResourcePage } from '../components/ResourceKit';

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
    <ResourcePage
      title="Support case"
      lede="Chronological notes stay with the ticket. Resolution does not refund, retry payout or change ledgers."
      action={<Link className="back-link" to="/support">Back to support</Link>}
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {ticket ? (
        <>
          <p><strong>{ticket.status}</strong> · {ticket.creatorRole} · {ticket.reasonCode?.replaceAll('_', ' ')}</p>
          <p>{ticket.subjectType} {ticket.subjectId}</p>
          <ul>
            {(ticket.notes ?? []).map((entry) => (
              <li key={entry.id || entry.createdAt}>{entry.authorRole}: {entry.body}</li>
            ))}
          </ul>
          <form className="resource-form" onSubmit={(event) => void addNote(event)}>
            <Field label="Add note"><input value={note} onChange={(event) => setNote(event.target.value)} required /></Field>
            <button className="login-button" type="submit" disabled={busy}>Save note</button>
          </form>
          <p>
            {account?.id ? (
              <button className="text-button" type="button" disabled={busy} onClick={() => void run(() => api.assignTicket(ticket.id!, account.id!))}>Assign to me</button>
            ) : null}
            {ticket.status !== 'resolved' ? (
              <button className="login-button" type="button" disabled={busy} onClick={() => void run(() => api.updateTicketStatus(ticket.id!, 'resolved', 'Resolved without changing financial history.'))}>Resolve</button>
            ) : null}
          </p>
        </>
      ) : null}
    </ResourcePage>
  );
}
