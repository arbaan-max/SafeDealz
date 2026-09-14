import { useEffect, useMemo, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useOrganizationApi, type AuditRow } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, downloadCsv } from '../components/ResourceKit';

const recordHref = (row: AuditRow) => {
  if (row.entityType === 'payment_instruction' || row.entityType === 'payment') return `/payments/${row.entityId}`;
  if (row.entityType === 'auction_round' || row.entityType === 'auction') return `/auctions/${row.entityId}`;
  if (row.entityType === 'support_ticket') return `/support/${row.entityId}`;
  if (row.entityType === 'branch') return `/branches/${row.entityId}`;
  return '';
};

const when = (value?: string) => {
  if (!value) return '—';
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return value;
  return date.toLocaleString('en-IN', { day: 'numeric', month: 'short', hour: '2-digit', minute: '2-digit' });
};

export function AuditPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [rows, setRows] = useState<AuditRow[]>([]);
  const [query, setQuery] = useState('');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void api.listAudit().then(setRows).catch((caught: Error) => setError(caught.message));
  }, [api]);
  const visible = useMemo(() => rows.filter((row) => `${row.actorName} ${row.action} ${row.storeName} ${row.objectLabel}`.toLowerCase().includes(query.toLowerCase())), [query, rows]);
  return (
    <ResourcePage title="Audit log" lede="This is a read-only security history. It shows who performed an important action, what changed, and which store it happened at.">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <div className="notice" role="note">Use this log to investigate mistakes or disputes. Object names the store or record, never a raw database id.</div>
      <ListTools placeholder="Search actor or action" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-audit.csv', [['Time', 'Actor', 'Action', 'Object'], ...visible.map((row) => [when(row.createdAt), row.actorName || row.actorRole || '', row.action || '', row.storeName || row.objectLabel || ''])])} />
      <DataTable
        headers={['Time', 'Actor', 'Action', 'Object']}
        empty="No audit events."
        onRowClick={(index) => { const href = recordHref(visible[index]); if (href) navigate(href); }}
        rows={visible.map((row) => [
          when(row.createdAt),
          row.actorName || row.actorRole || '—',
          row.action || '—',
          row.storeName || row.objectLabel || '—',
        ])}
      />
    </ResourcePage>
  );
}
