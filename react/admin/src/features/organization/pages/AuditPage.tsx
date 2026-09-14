import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi, type AuditRow } from '../api/organizationApi';
import { DataTable, Field, ResourcePage } from '../components/ResourceKit';

const recordHref = (row: AuditRow) => {
  if (row.entityType === 'payment_instruction' || row.entityType === 'payment') return `/payments/${row.entityId}`;
  if (row.entityType === 'auction_round' || row.entityType === 'auction') return `/auctions/${row.entityId}`;
  if (row.entityType === 'support_ticket') return `/support/${row.entityId}`;
  return '';
};

export function AuditPage() {
  const api = useOrganizationApi();
  const [rows, setRows] = useState<AuditRow[]>([]);
  const [action, setAction] = useState('');
  const [entityType, setEntityType] = useState('');
  const [error, setError] = useState<string | null>(null);
  const load = (query?: Record<string, string>) => void api.listAudit(query).then(setRows).catch((caught: Error) => setError(caught.message));
  useEffect(() => {
    void api.listAudit().then(setRows).catch((caught: Error) => setError(caught.message));
  }, [api]);
  return (
    <ResourcePage title="Audit log" lede="Read-only trail of who performed an important action, what changed, when it happened and which record was affected. Restricted fields stay redacted." action={<Link className="back-link" to="/overview">Back to overview</Link>}>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="resource-form" onSubmit={(event) => { event.preventDefault(); load({ action, entityType }); }}>
        <Field label="Action"><input value={action} onChange={(event) => setAction(event.target.value)} /></Field>
        <Field label="Record type"><input value={entityType} onChange={(event) => setEntityType(event.target.value)} /></Field>
        <button className="login-button" type="submit">Apply filters</button>
      </form>
      <DataTable
        headers={['When', 'Actor', 'Action', 'Record']}
        empty="No audit events."
        rows={rows.map((row) => {
          const href = recordHref(row);
          return [
            row.createdAt || '—',
            row.actorRole || '—',
            row.action || '—',
            href ? <Link to={href}>{row.entityType} {row.entityId}</Link> : `${row.entityType} ${row.entityId}`,
          ];
        })}
      />
    </ResourcePage>
  );
}
