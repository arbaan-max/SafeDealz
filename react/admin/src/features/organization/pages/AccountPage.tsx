import { FormEvent, useState } from 'react';
import { useAuth } from '../../auth/AuthContext';
import { useOrganizationApi } from '../api/organizationApi';
import { Field, ResourcePage } from '../components/ResourceKit';

export function AccountPage() {
  const auth = useAuth();
  const api = useOrganizationApi();
  const [currentPassword, setCurrentPassword] = useState('');
  const [newPassword, setNewPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [message, setMessage] = useState<string | null>(null);
  const change = async (event: FormEvent) => {
    event.preventDefault();
    setError(null);
    if (newPassword !== confirmPassword) { setError('New password and confirmation must match.'); return; }
    try {
      await api.changePassword(currentPassword, newPassword);
      setMessage('Password changed.');
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : 'Unable to change password.');
    }
  };
  const roleLabel = auth.account?.role === 'super_admin' ? 'Super Admin' : 'Admin';
  return (
    <ResourcePage title="Account" lede="Email, password and the current signed-in browser. Logout returns to Login." backTo="/overview" backLabel="Back to overview">
      {error ? <p className="form-error" role="alert">{error}</p> : null}
      {message ? <p role="status">{message}</p> : null}
      <div className="card form-card account-card">
        <div className="admin-heading">
          <span className="avatar" aria-hidden="true">SD</span>
          <div>
            <h2>{roleLabel}</h2>
            <p className="muted">{auth.account?.email}</p>
          </div>
        </div>
        <form className="account-password" onSubmit={(event) => void change(event)}>
          <Field label="Current password"><input type="password" value={currentPassword} onChange={(event) => setCurrentPassword(event.target.value)} required /></Field>
          <Field label="New password"><input type="password" value={newPassword} onChange={(event) => setNewPassword(event.target.value)} required minLength={12} /></Field>
          <Field label="Confirm password"><input type="password" value={confirmPassword} onChange={(event) => setConfirmPassword(event.target.value)} required minLength={12} /></Field>
          <button className="btn small" type="submit">Update password</button>
        </form>
        <div className="receipt-line" />
        <h3>Active sessions</h3>
        <div className="detail"><span>Current session</span><strong>Desktop browser / This device</strong></div>
        <p className="muted">This browser stays signed in for 30 days. Opening Admin or Overview refreshes the session automatically.</p>
        <button className="btn small secondary" type="button" onClick={() => void auth.logout()}>Logout</button>
      </div>
    </ResourcePage>
  );
}
