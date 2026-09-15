import { useQueryClient } from '@tanstack/react-query';
import {
  createColumnHelper,
  createPaginatedRowModel,
  rowPaginationFeature,
  tableFeatures,
  useTable,
} from '@tanstack/react-table';
import { useVirtualizer } from '@tanstack/react-virtual';
import { type FormEvent, type ReactNode, useMemo, useRef, useState } from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft, MoreHorizontal, RefreshCw } from 'lucide-react';

export const LIST_PAGE_SIZE = 40;

type TableRow = { index: number; cells: ReactNode[] };

const listTableFeatures = tableFeatures({
  rowPaginationFeature,
  paginatedRowModel: createPaginatedRowModel(),
});
const columnHelper = createColumnHelper<typeof listTableFeatures, TableRow>();
const EMPTY_ROWS: TableRow[] = [];

/* Shared kit: page chrome plus CSV helper used by list screens. */
/* eslint-disable react-refresh/only-export-components */

export function RefreshButton({ onRefresh }: { onRefresh?: () => void | Promise<unknown> }) {
  const queryClient = useQueryClient();
  const [busy, setBusy] = useState(false);
  const run = async () => {
    if (busy) return;
    setBusy(true);
    try {
      await (onRefresh ? onRefresh() : queryClient.invalidateQueries({ queryKey: ['admin'] }));
    } finally {
      setBusy(false);
    }
  };
  return (
    <button className="btn small secondary" type="button" disabled={busy} aria-busy={busy} onClick={() => void run()}>
      <RefreshCw size={14} className={busy ? 'refresh-spin' : undefined} aria-hidden="true" /> Refresh
    </button>
  );
}

export function ResourcePage({ title, lede, action, backTo, backLabel, onRefresh, children }: {
  title: string; lede?: string; action?: ReactNode; backTo?: string; backLabel?: string; onRefresh?: () => void | Promise<unknown>; children: ReactNode;
}) {
  return (
    <section aria-labelledby="page-title">
      <div className="admin-title">
        <div className="admin-heading">
          {backTo ? <Link className="iconbtn admin-back" to={backTo} aria-label={backLabel || 'Back'}>{<ArrowLeft size={16} />}</Link> : null}
          <div>
            <h1 id="page-title">{title}</h1>
            <p>{lede || 'Manage your exchange network with confidence.'}</p>
          </div>
        </div>
        <div className="admin-title-actions">
          {action}
          <RefreshButton onRefresh={onRefresh} />
        </div>
      </div>
      {children}
    </section>
  );
}

export function StatusBadge({ tone = 'sky', children }: { tone?: 'sky' | 'green' | 'amber' | 'gray'; children: ReactNode }) {
  return <span className={`badge badge-${tone}`}>{children}</span>;
}

export function DataTable({ headers, rows, empty, onRowClick, rowCount, pageIndex, onPageIndexChange }: {
  headers: string[];
  rows: ReactNode[][];
  empty: string;
  onRowClick?: (index: number) => void;
  rowCount?: number;
  pageIndex?: number;
  onPageIndexChange?: (pageIndex: number) => void;
}) {
  const scrollRef = useRef<HTMLDivElement>(null);
  const [pagination, setPagination] = useState({ pageIndex: 0, pageSize: LIST_PAGE_SIZE });
  const data = useMemo(() => rows.map((cells, index) => ({ index, cells })), [rows]);
  const columns = useMemo(
    () => headers.map((header, columnIndex) => columnHelper.display({
      id: `col-${columnIndex}`,
      header,
      cell: (info) => info.row.original.cells[columnIndex],
    })),
    [headers],
  );
  const serverPaged = rowCount != null && onPageIndexChange != null;
  const currentPagination = {
    pageIndex: pageIndex ?? pagination.pageIndex,
    pageSize: LIST_PAGE_SIZE,
  };
  const table = useTable({
    features: listTableFeatures,
    data: data.length ? data : EMPTY_ROWS,
    columns,
    getRowId: (row) => String(row.index),
    initialState: { pagination: { pageIndex: 0, pageSize: LIST_PAGE_SIZE } },
    state: { pagination: currentPagination },
    onPaginationChange: (updater) => {
      const next = typeof updater === 'function' ? updater(currentPagination) : updater;
      if (onPageIndexChange) onPageIndexChange(next.pageIndex);
      else setPagination(next);
    },
    manualPagination: serverPaged,
    rowCount: serverPaged ? rowCount : undefined,
    autoResetPageIndex: !serverPaged,
  });
  const pageRows = table.getRowModel().rows;
  const virtualizer = useVirtualizer({
    count: pageRows.length,
    getScrollElement: () => scrollRef.current,
    estimateSize: () => 64,
    overscan: 8,
    getItemKey: (index) => pageRows[index]?.id ?? index,
  });
  if (!rows.length) return <p className="empty-state" role="status">{empty}</p>;
  const virtualRows = virtualizer.getVirtualItems();
  const rendered = virtualRows.length ? virtualRows : pageRows.map((row, index) => ({ index, start: 0, end: 0, key: row.id }));
  const paddingTop = virtualRows[0]?.start ?? 0;
  const paddingBottom = virtualRows.length ? virtualizer.getTotalSize() - (virtualRows.at(-1)?.end ?? 0) : 0;
  const pages = Math.max(1, table.getPageCount());
  const lastCell = headers.length - 1;
  return (
    <div className="table-block">
      <div className="table-wrap" ref={scrollRef}>
        <table>
          <thead>
            {table.getHeaderGroups().map((group) => (
              <tr key={group.id}>
                {group.headers.map((header) => (
                  <th key={header.id}>{header.isPlaceholder ? null : <table.FlexRender header={header} />}</th>
                ))}
              </tr>
            ))}
          </thead>
          <tbody>
            {paddingTop > 0 ? <tr aria-hidden="true"><td colSpan={headers.length} style={{ height: paddingTop, padding: 0, border: 0 }} /></tr> : null}
            {rendered.map((item) => {
              const row = pageRows[item.index];
              return (
                <tr
                  key={row.id}
                  data-index={item.index}
                  ref={virtualizer.measureElement}
                  className={onRowClick ? 'clickable-row' : undefined}
                  onClick={onRowClick ? () => onRowClick(row.original.index) : undefined}
                >
                  {row.getAllCells().map((cell, cellIndex) => (
                    <td key={cell.id} onClick={onRowClick && cellIndex === lastCell ? (event) => event.stopPropagation() : undefined}>
                      <table.FlexRender cell={cell} />
                    </td>
                  ))}
                </tr>
              );
            })}
            {paddingBottom > 0 ? <tr aria-hidden="true"><td colSpan={headers.length} style={{ height: paddingBottom, padding: 0, border: 0 }} /></tr> : null}
          </tbody>
        </table>
      </div>
      <div className="pager">
        <button className="btn small secondary" type="button" disabled={!table.getCanPreviousPage()} onClick={() => table.previousPage()}>Previous</button>
        <span>Page {currentPagination.pageIndex + 1} of {pages} · {pageRows.length} of {serverPaged ? rowCount : rows.length} items</span>
        <button className="btn small secondary" type="button" disabled={!table.getCanNextPage()} onClick={() => table.nextPage()}>Next</button>
      </div>
    </div>
  );
}

export function ListTools({ placeholder, query, onQuery, onExport, children }: {
  placeholder: string; query: string; onQuery(value: string): void; onExport(): void; children?: ReactNode;
}) {
  return (
    <div className="admin-tools">
      <div className="search"><input value={query} onChange={(event) => onQuery(event.target.value)} placeholder={placeholder} aria-label={placeholder} /></div>
      {children}
      <button className="btn small secondary" type="button" onClick={onExport}>Export</button>
    </div>
  );
}

export function RowMenu({ label = 'More actions', children }: { label?: string; children: ReactNode }) {
  return (
    <details className="row-menu" onClick={(event) => event.stopPropagation()}>
      <summary className="iconbtn row-menu-trigger" aria-label={label}><MoreHorizontal size={16} /></summary>
      <div className="row-menu-panel">{children}</div>
    </details>
  );
}

export function downloadCsv(filename: string, rows: Array<Array<string | number>>) {
  const csv = rows.map((row) => row.map((cell) => `"${String(cell).replaceAll('"', '""')}"`).join(',')).join('\n');
  const link = document.createElement('a');
  link.href = URL.createObjectURL(new Blob([csv], { type: 'text/csv' }));
  link.download = filename;
  link.click();
  setTimeout(() => URL.revokeObjectURL(link.href), 500);
}

export function ResourceForm({ title, backTo, backLabel, error, onSubmit, children, busy, extraActions, onRefresh }: {
  title: string; backTo: string; backLabel: string; error: string | null; onSubmit(): Promise<void>; children: ReactNode; busy: boolean; extraActions?: ReactNode; onRefresh?: () => void | Promise<unknown>;
}) {
  const [submitting, setSubmitting] = useState(false);
  const submit = async (event: FormEvent) => {
    event.preventDefault();
    setSubmitting(true);
    try { await onSubmit(); } finally { setSubmitting(false); }
  };
  return (
    <section className="resource-form-page" aria-labelledby="page-title">
      <div className="admin-title">
        <div className="admin-heading">
          <Link className="iconbtn admin-back" to={backTo} aria-label={backLabel}><ArrowLeft size={16} /></Link>
          <div>
            <h1 id="page-title">{title}</h1>
            <p>Manage your exchange network with confidence.</p>
          </div>
        </div>
        <div className="admin-title-actions">
          <RefreshButton onRefresh={onRefresh} />
        </div>
      </div>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="card form-card resource-form" onSubmit={(event) => void submit(event)}>
        <div className="form-grid">{children}</div>
        <div className="row-actions">
          {extraActions}
          <button className="btn small" type="submit" disabled={busy || submitting}>{submitting || busy ? 'Saving…' : 'Save'}</button>
        </div>
      </form>
    </section>
  );
}

export function Field({ label, children, span }: { label: string; children: ReactNode; span?: boolean }) {
  return <label className={span ? 'field span2' : 'field'}>{label}{children}</label>;
}
