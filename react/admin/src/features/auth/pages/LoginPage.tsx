import { Eye, EyeOff, Zap } from 'lucide-react';
import { type FormEvent, useState } from 'react';
import { Navigate, useLocation, useNavigate } from 'react-router-dom';
import { ApiError } from '../../../shared/api/apiClient';
import { useAuth } from '../AuthContext';

export function LoginPage() {
  const auth = useAuth();
  const navigate = useNavigate();
  const location = useLocation();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [visible, setVisible] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(auth.message);
  if (auth.status === 'authenticated') return <Navigate to="/overview" replace />;
  const submit = async (event: FormEvent) => {
    event.preventDefault(); setSubmitting(true); setError(null);
    try {
      await auth.login(email, password);
      const target = (location.state as { from?: { pathname?: string } } | null)?.from?.pathname ?? '/overview';
      navigate(target, { replace: true });
    } catch (failure) {
      setError(failure instanceof ApiError ? failure.message : 'Unable to connect. Try again.');
    } finally { setSubmitting(false); }
  };
  return (
    <main className="login-page">
      <aside className="login-intro-pane">
        <div className="row">
          <div className="status-orb" aria-hidden="true"><Zap size={18} /></div>
          <strong>SafeDealz</strong>
        </div>
        <div>
          <span className="eyebrow">Platform administration</span>
          <h1>One place.<br />Every operation.</h1>
          <p>Manage your store network, vendor accounts and device auctions with a clear view of every transaction.</p>
        </div>
        <span className="muted">SafeDealz · Super Admin workspace</span>
      </aside>
      <section className="login-card" aria-labelledby="login-title">
        <form className="login-panel" onSubmit={submit}>
          <span className="eyebrow">Welcome back</span>
          <h1 id="login-title">Super Admin Login</h1>
          <p className="login-intro">Enter your administrator credentials to continue.</p>
          {error && <div className="form-error" role="alert">{error}</div>}
          <label htmlFor="email">Email address</label>
          <input id="email" type="email" autoComplete="username" required value={email} onChange={(event) => setEmail(event.target.value)} />
          <label htmlFor="password">Password</label>
          <div className="password-field">
            <input id="password" type={visible ? 'text' : 'password'} autoComplete="current-password" required value={password} onChange={(event) => setPassword(event.target.value)} />
            <button type="button" onClick={() => setVisible((value) => !value)} aria-label={visible ? 'Hide password' : 'Show password'} aria-pressed={visible}>{visible ? <EyeOff aria-hidden="true" /> : <Eye aria-hidden="true" />}</button>
          </div>
          <button className="login-button" type="submit" disabled={submitting}>{submitting ? 'Logging in…' : 'Login'}</button>
        </form>
      </section>
    </main>
  );
}
