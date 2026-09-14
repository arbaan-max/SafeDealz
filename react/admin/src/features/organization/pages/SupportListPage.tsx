import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi, type SupportTicket } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';

export function SupportListPage() {
  const api = useOrganizationApi();
  const [rows, setRows] = useState<SupportTicket[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    void api.listTickets().then(setRows).catch((caught: Error) => setError(caught.message));
  }, [api]);
  return (
    <ResourcePage
      title="Support"
      lede="Cases raised by Store Managers or Vendors. Super Admin assigns and resolves. There is no admin create-ticket control and no financial shortcut."
    >
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={['Creator', 'Type', 'Reference', 'Owner', 'Status']}
        empty="No support tickets yet."
        rows={rows.map((row) => [
          row.creatorRole || '—',
          row.reasonCode?.replaceAll('_', ' ') || '—',
          <Link key={row.id} to={`/support/${row.id}`}>{row.subjectType} {row.subjectId}</Link>,
          row.ownerAccountId || 'Unassigned',
          row.status?.replaceAll('_', ' ') || '—',
        ])}
      />
    </ResourcePage>
  );
}
