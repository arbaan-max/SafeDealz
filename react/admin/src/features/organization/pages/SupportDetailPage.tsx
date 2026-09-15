import { FormEvent, useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { useOrganizationApi, type SupportTicket, type SupportTicketStatusOption } from '../api/organizationApi';
import { Field, ResourcePage, StatusBadge } from '../components/ResourceKit';

const asSelectValue = (status?: string) => (status === 'investigating' ? 'investigation' : status || 'investigation');

export function SupportDetailPage() {
  const { id } = useParams();
  const api = useOrganizationApi();
  const [ticket, setTicket] = useState<SupportTicket | null>(null);
  const [statuses, setStatuses] = useState<SupportTicketStatusOption[]>([
    { value: 'investigation', label: 'Investigation' },
    { value: 'resolved', label: 'Resolved' },
  ]);
  const [status, setStatus] = useState('investigation');
  const [note, setNote] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const load = () => {
    if (!id) return;
    void Promise.all([api.getTicket(id), api.listTicketStatuses()]).then(([nextTicket, nextStatuses]) => {
      setTicket(nextTicket);
      setStatus(asSelectValue(nextTicket.status));
      if (nextStatuses.statuses?.length) setStatuses(nextStatuses.statuses);
    }).catch((caught: Error) => setError(caught.message));
  };
  useEffect(() => { load(); }, [api, id]); // eslint-disable-line react-hooks/exhaustive-deps -- reload the case when the ticket id changes
  const run = async (action: () => Promise<SupportTicket>) => {
    setBusy(true);
    setError(null);
    try { setTicket(await action()); } catch (caught) { setError(caught instanceof Error ? caught.message : 'Unable to update ticket.'); }
    setBusy(false);
  };
  const saveStatus = async (event: FormEvent) => {
    event.preventDefault();
    if (!id) return;
    await run(() => api.updateTicketStatus(id, status));
  };
  const addNote = async (event: FormEvent) => {
    event.preventDefault();
    if (!id || !note.trim()) return;
    await run(() => api.addTicketNote(id, note.trim()));
    setNote('');
  };
  return (
    <ResourcePage title="Support case" lede="Chronological notes stay with the ticket. Resolution does not refund, retry payout or change ledgers." backTo="/support" backLabel="Back to support" onRefresh={load}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {ticket ? (
        <div className="admin-grid">
          <div className="card">
            <div className="between">
              <h2>SUP-{String(ticket.id || '').slice(-4).toUpperCase()}</h2>
              <StatusBadge tone={ticket.status === 'resolved' ? 'green' : ticket.status === 'investigating' || ticket.status === 'investigation' ? 'amber' : 'sky'}>{ticket.status?.replaceAll('_', ' ')}</StatusBadge>
            </div>
            <div className="detail"><span>Raised by</span><strong>{ticket.creatorRole?.replaceAll('_', ' ')}</strong></div>
            <div className="detail"><span>Type</span><strong>{ticket.reasonCode?.replaceAll('_', ' ')}</strong></div>
            <div className="detail"><span>Reference</span><strong>{ticket.subjectType} {ticket.subjectId}</strong></div>
            <form onSubmit={(event) => void saveStatus(event)}>
              <Field label="Status">
                <select value={status} onChange={(event) => setStatus(event.target.value)} aria-label="Ticket status">
                  {statuses.map((option) => <option key={option.value} value={option.value}>{option.label}</option>)}
                </select>
              </Field>
              <div className="row-actions">
                <button className="btn small" type="submit" disabled={busy}>Save</button>
              </div>
            </form>
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
