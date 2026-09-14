import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useOrganizationApi } from '../api/organizationApi';
import { DataTable, ResourcePage } from '../components/ResourceKit';

type AuctionRow = {
  id: string;
  deviceId?: string;
  status?: string;
  roundNumber?: number;
  highestAmountPaise?: number;
};

export function AuctionListPage() {
  const api = useOrganizationApi();
  const [rows, setRows] = useState<AuctionRow[]>([]);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => { void api.listAuctions().then(setRows).catch((caught: Error) => setError(caught.message)); }, [api]);
  return (
    <ResourcePage eyebrow="A10" title="Auctions" lede="Device rounds across assigned stores. Open a round to inspect bids and payment state.">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <DataTable
        headers={['Round', 'Status', 'Highest', '']}
        empty="No auctions yet."
        rows={rows.map((row) => [
          `Round ${row.roundNumber ?? 1}`,
          row.status?.replaceAll('_', ' ') ?? '—',
          typeof row.highestAmountPaise === 'number' ? `₹${(row.highestAmountPaise / 100).toLocaleString('en-IN')}` : '—',
          <Link key={row.id} to={`/auctions/${row.id}`}>Open</Link>,
        ])}
      />
    </ResourcePage>
  );
}
