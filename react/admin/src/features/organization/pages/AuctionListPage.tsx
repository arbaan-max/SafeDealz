import { useEffect, useMemo, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useOrganizationApi, type AuctionRound } from '../api/organizationApi';
import { DataTable, ListTools, ResourcePage, StatusBadge, downloadCsv } from '../components/ResourceKit';

const rupees = (paise?: number) => (typeof paise === 'number' ? `₹${(paise / 100).toLocaleString('en-IN')}` : '—');
const endsIn = (row: AuctionRound) => {
  if (row.status !== 'live' || !row.closesAt) return 'Closed';
  const ms = new Date(row.closesAt).getTime() - Date.now();
  if (ms <= 0) return 'Closed';
  return `${Math.max(1, Math.ceil(ms / 60000))} min`;
};
const tone = (status?: string): 'sky' | 'green' | 'amber' | 'gray' => (
  status === 'live' ? 'sky' : status === 'accepted' ? 'green' : status === 'needs_reauction' ? 'amber' : 'gray'
);

export function AuctionListPage() {
  const api = useOrganizationApi();
  const navigate = useNavigate();
  const [rows, setRows] = useState<AuctionRound[]>([]);
  const [query, setQuery] = useState('');
  const [status, setStatus] = useState('All statuses');
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listAuctions().then(setRows).catch((caught: Error) => setError(caught.message)); }, [api]);
  const visible = useMemo(() => rows.filter((row) => {
    const haystack = `${row.device?.model || ''} ${row.branch?.name || ''} ${row.status || ''}`.toLowerCase();
    if (query && !haystack.includes(query.toLowerCase())) return false;
    if (status === 'All statuses') return true;
    return (row.status || '').replaceAll('_', ' ') === status.toLowerCase() || row.status === status;
  }), [query, rows, status]);
  return (
    <ResourcePage title="Auctions" lede="Device rounds across assigned stores. Open a round to inspect bids and payment state.">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <ListTools placeholder="Search model, IMEI or branch" query={query} onQuery={setQuery} onExport={() => downloadCsv('safedealz-auctions.csv', [['Device', 'Branch', 'Ends in', 'Highest offer', 'Status'], ...visible.map((row) => [row.device?.model || '', row.branch?.name || '', endsIn(row), rupees(row.highestAmountPaise), row.status || ''])])}>
        <select aria-label="Filter status" value={status} onChange={(event) => setStatus(event.target.value)}>
          <option>All statuses</option><option>live</option><option>accepted</option><option>needs_reauction</option>
        </select>
      </ListTools>
      <DataTable
        headers={['Device / round', 'Branch', 'Ends in', 'Highest offer', 'Status']}
        empty="No auctions yet."
        onRowClick={(index) => navigate(`/auctions/${visible[index].id}`)}
        rows={visible.map((row) => [
          <span key={`${row.id}-device`}>
            <strong>{row.device?.model || `Round ${row.roundNumber ?? 1}`}</strong>
            {row.device?.model ? <small>{[row.device.storage, `Round ${row.roundNumber ?? 1}`].filter(Boolean).join(' / ')}</small> : null}
          </span>,
          row.branch?.name || '—',
          endsIn(row),
          rupees(row.highestAmountPaise),
          <StatusBadge key={`${row.id}-status`} tone={tone(row.status)}>{row.status?.replaceAll('_', ' ') || '—'}</StatusBadge>,
        ])}
      />
    </ResourcePage>
  );
}
