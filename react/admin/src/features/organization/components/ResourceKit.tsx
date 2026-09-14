import { type FormEvent, type ReactNode, useState } from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft, MoreHorizontal } from 'lucide-react';

export function ResourcePage({ title, lede, action, backTo, backLabel, children }: {
  title: string; lede?: string; action?: ReactNode; backTo?: string; backLabel?: string; children: ReactNode;
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
        {action}
      </div>
      {children}
    </section>
  );
}

export function StatusBadge({ tone = 'sky', children }: { tone?: 'sky' | 'green' | 'amber' | 'gray'; children: ReactNode }) {
  return <span className={`badge badge-${tone}`}>{children}</span>;
}

export function DataTable({ headers, rows, empty, onRowClick }: {
  headers: string[]; rows: ReactNode[][]; empty: string; onRowClick?: (index: number) => void;
}) {
  if (!rows.length) return <p className="empty-state" role="status">{empty}</p>;
  return (
    <div className="table-wrap">
      <table>
        <thead><tr>{headers.map((header) => <th key={header}>{header}</th>)}</tr></thead>
        <tbody>
          {rows.map((row, index) => (
            <tr key={index} className={onRowClick ? 'clickable-row' : undefined} onClick={onRowClick ? () => onRowClick(index) : undefined}>
              {row.map((cell, cellIndex) => (
                <td key={cellIndex} onClick={onRowClick && cellIndex === row.length - 1 ? (event) => event.stopPropagation() : undefined}>{cell}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
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
      <summary className="iconbtn" aria-label={label}><MoreHorizontal size={16} /></summary>
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

export function ResourceForm({ title, backTo, backLabel, error, onSubmit, children, busy, extraActions }: {
  title: string; backTo: string; backLabel: string; error: string | null; onSubmit(): Promise<void>; children: ReactNode; busy: boolean; extraActions?: ReactNode;
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
