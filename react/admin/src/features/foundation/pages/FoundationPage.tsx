import { Blocks, Database, KeyRound } from 'lucide-react';

const foundations = [
  { icon: Blocks, title: 'Shared interface', text: 'Theme tokens, layout, routing and accessible components are centralized.' },
  { icon: KeyRound, title: 'Permission boundaries', text: 'Routes can declare roles and permissions while the API remains authoritative.' },
  { icon: Database, title: 'Contract-ready data', text: 'One API adapter normalizes requests and errors for upcoming features.' },
];

export function FoundationPage() {
  return (
    <section aria-labelledby="page-title">
      <div className="eyebrow">Phase 01</div>
      <h1 id="page-title">Admin foundation</h1>
      <p className="lede">The SafeDealz administration workspace is prepared for secure, store-scoped features.</p>
      <div className="foundation-grid">
        {foundations.map(({ icon: Icon, title, text }) => (
          <article className="foundation-card" key={title}>
            <span className="card-icon" aria-hidden="true"><Icon size={20} /></span>
            <h2>{title}</h2><p>{text}</p>
          </article>
        ))}
      </div>
      <div className="notice" role="status"><strong>No operational data yet.</strong> Authentication and live administration begin in the next authorized phase.</div>
    </section>
  );
}
