import { getMessaging, getToken, isSupported } from 'firebase/messaging';
import { firebaseApp } from '../../../firebase';

export async function registerAdminPush(register: (path: string, init?: RequestInit) => Promise<unknown>) {
  const vapidKey = import.meta.env.VITE_FIREBASE_VAPID_KEY as string | undefined;
  if (!vapidKey || typeof Notification === 'undefined') return;
  try {
    if (!(await isSupported())) return;
    const permission = await Notification.requestPermission();
    if (permission !== 'granted') return;
    const token = await getToken(getMessaging(firebaseApp), { vapidKey });
    if (!token) return;
    await register('/auth/push-tokens', {
      method: 'POST',
      body: JSON.stringify({ token, platform: 'web', client: 'admin' }),
    });
  } catch {
    // Admin still works without a browser push token.
  }
}
