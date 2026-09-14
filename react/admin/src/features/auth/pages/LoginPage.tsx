import { Eye, EyeOff, ShieldCheck } from 'lucide-react';
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
  if (auth.status === 'authenticated') return <Navigate to="/foundation" replace />;
  const submit = async (event: FormEvent) => {
    event.preventDefault(); setSubmitting(true); setError(null);
    try {
      await auth.login(email, password);
      const target = (location.state as { from?: { pathname?: string } } | null)?.from?.pathname ?? '/foundation';
      navigate(target, { replace: true });
    } catch (failure) {
      setError(failure instanceof ApiError ? failure.message : 'Unable to connect. Try again.');
    } finally { setSubmitting(false); }
  };
  return <main className="login-page"><section className="login-card" aria-labelledby="login-title">
    <span className="login-mark" aria-hidden="true"><ShieldCheck size={26} /></span>
    <p className="eyebrow">SafeDealz administration</p><h1 id="login-title">Login</h1>
    <p className="login-intro">Use the email and password provided by your administrator.</p>
    {error && <div className="form-error" role="alert">{error}</div>}
    <form onSubmit={submit}>
      <label htmlFor="email">Email</label><input id="email" type="email" autoComplete="username" required value={email} onChange={(event) => setEmail(event.target.value)} />
      <label htmlFor="password">Password</label><div className="password-field"><input id="password" type={visible ? 'text' : 'password'} autoComplete="current-password" required value={password} onChange={(event) => setPassword(event.target.value)} /><button type="button" onClick={() => setVisible((value) => !value)} aria-label={visible ? 'Hide password' : 'Show password'} aria-pressed={visible}>{visible ? <EyeOff aria-hidden="true" /> : <Eye aria-hidden="true" />}</button></div>
      <button className="login-button" type="submit" disabled={submitting}>{submitting ? 'Logging in…' : 'Login'}</button>
    </form>
  </section></main>;
}
