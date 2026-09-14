import { FormEvent, useEffect, useState } from 'react';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi, type AccountSession } from '../api/organizationApi';
import { Field, ResourcePage } from '../components/ResourceKit';

export function AccountPage() {
  const auth = useAuth();
  const api = useOrganizationApi();
  const [sessions, setSessions] = useState<AccountSession[]>([]);
  const [currentPassword, setCurrentPassword] = useState('');
  const [newPassword, setNewPassword] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [message, setMessage] = useState<string | null>(null);
  useEffect(() => {
    void api.listSessions().then(setSessions).catch((caught: Error) => setError(caught.message));
  }, [api]);
  const change = async (event: FormEvent) => {
    event.preventDefault();
    setError(null);
    try {
      await api.changePassword(currentPassword, newPassword);
      setMessage('Password changed. Other sessions were revoked.');
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to change password.');
    }
  };
  const roleLabel = auth.account?.role === 'super_admin' ? 'Super Admin' : 'Admin';
  return (
    <ResourcePage title="Account" lede="Email, password and sessions. Logout returns to Login." backTo="/overview" backLabel="Back to overview">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {message ? <p role="status">{message}</p> : null}
      <div className="card form-card">
        <div className="admin-heading" style={{ marginBottom: 16 }}>
          <span className="avatar" aria-hidden="true">SD</span>
          <div>
            <h2>{roleLabel}</h2>
            <p className="muted">{auth.account?.email}</p>
          </div>
        </div>
        <form onSubmit={(event) => void change(event)}>
          <Field label="Current password"><input type="password" value={currentPassword} onChange={(event) => setCurrentPassword(event.target.value)} required /></Field>
          <Field label="New password"><input type="password" value={newPassword} onChange={(event) => setNewPassword(event.target.value)} required minLength={12} /></Field>
          <button className="btn small" type="submit">Update password</button>
        </form>
        <div className="gap" />
        <h3>Active sessions</h3>
        <ul>
          {sessions.map((session) => (
            <li key={session.id}>
              {session.clientType} {session.current ? '(current)' : ''}
              {!session.current && !session.revokedAt ? (
                <button className="btn secondary" type="button" onClick={() => void api.revokeSession(session.id!).then(() => api.listSessions().then(setSessions)).catch((caught: Error) => setError(caught.message))}>Revoke session</button>
              ) : null}
            </li>
          ))}
        </ul>
        <div className="gap" />
        <button className="btn secondary" type="button" onClick={() => void auth.logout()}>Logout</button>
      </div>
    </ResourcePage>
  );
}
