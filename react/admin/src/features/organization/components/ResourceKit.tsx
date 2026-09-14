import { type FormEvent, type ReactNode, useState } from 'react';
import { Link } from 'react-router-dom';

export function ResourcePage({ eyebrow, title, lede, action, children }: { eyebrow: string; title: string; lede: string; action?: ReactNode; children: ReactNode }) {
  return (
    <section aria-labelledby="page-title">
      <div className="page-heading">
        <div>
          <div className="eyebrow">{eyebrow}</div>
          <h1 id="page-title">{title}</h1>
          <p className="lede">{lede}</p>
        </div>
        {action}
      </div>
      {children}
    </section>
  );
}

export function DataTable({ headers, rows, empty }: { headers: string[]; rows: ReactNode[][]; empty: string }) {
  if (!rows.length) return <p className="empty-state" role="status">{empty}</p>;
  return (
    <div className="table-wrap">
      <table>
        <thead><tr>{headers.map((header) => <th key={header}>{header}</th>)}</tr></thead>
        <tbody>{rows.map((row, index) => <tr key={index}>{row.map((cell, cellIndex) => <td key={cellIndex}>{cell}</td>)}</tr>)}</tbody>
      </table>
    </div>
  );
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
    <section aria-labelledby="page-title">
      <Link className="back-link" to={backTo}>{backLabel}</Link>
      <h1 id="page-title">{title}</h1>
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      <form className="resource-form" onSubmit={(event) => void submit(event)}>
        {children}
        <div className="row-actions">
          {extraActions}
          <button className="login-button" type="submit" disabled={busy || submitting}>{submitting || busy ? 'Saving…' : 'Save'}</button>
        </div>
      </form>
    </section>
  );
}

export function Field({ label, children }: { label: string; children: ReactNode }) {
  return <label className="field">{label}{children}</label>;
}
