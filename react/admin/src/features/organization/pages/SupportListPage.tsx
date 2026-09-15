import { useMemo, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAdminList, queryMessage } from '../hooks/useAdminQuery';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, StatusBadge, downloadCsv } from '../components/ResourceKit';

const raisedBy = (role?: string) => ({ store_manager: 'Store manager', vendor: 'Vendor', super_admin: 'Super Admin', admin: 'Admin' }[role ?? ''] ?? role ?? '—');

export function SupportListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const ticketsQuery = useAdminList(['admin', 'tickets'], () => api.listTickets());
  const rows = ticketsQuery.items;
  const [query, setQuery] = useState('');
  const visible = useMemo(() => rows.filter((row) => `${row.reasonCode} ${row.subjectType} ${row.creatorRole} ${row.status}`.toLowerCase().includes(query.toLowerCase())), [query, rows]);
  return (
    <ResourcePage title="Support" lede="Cases raised by Store Managers or Vendors. Super Admin assigns and resolves. There is no admin create-ticket control and no financial shortcut." onRefresh={() => ticketsQuery.refetch()}>
      {queryMessage(ticketsQuery.error) ? <p className="form-error" role="alert">{queryMessage(ticketsQuery.error)}</p> : null}
      <ListTools placeholder="Search support cases" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-support.csv', [['Case', 'Raised by', 'Type', 'Reference', 'Owner', 'Status'], ...visible.map((row) => [row.id || '', raisedBy(row.creatorRole), row.reasonCode || '', `${row.subjectType} ${row.subjectId}`, row.ownerAccountId || 'Unassigned', row.status || ''])])} />
      <DataTable
        headers={['Case', 'Raised by', 'Type', 'Reference', 'Owner', 'Status']}
        empty="No support tickets yet."
        onRowClick={(index) => navigate(`/support/${visible[index].id}`)}
        rows={visible.map((row) => [
          `SUP-${String(row.id || '').slice(-4).toUpperCase()}`,
          raisedBy(row.creatorRole),
          row.reasonCode?.replaceAll('_', ' ') || '—',
          `${row.subjectType} ${row.subjectId}`,
          row.ownerAccountId ? 'Assigned' : 'Unassigned',
          <StatusBadge key={`${row.id}-status`} tone={row.status === 'resolved' ? 'green' : row.status === 'investigating' ? 'amber' : 'sky'}>{row.status?.replaceAll('_', ' ')}</StatusBadge>,
        ])}
      />
      <div className="gap" />
      <div className="notice" role="note">Support tickets are created by store managers or vendors. Super Admin reviews, assigns and resolves them; financial history is never deleted.</div>
    </ResourcePage>
  );
}
