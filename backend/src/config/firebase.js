import { existsSync, readFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import { cert, getApp, getApps, initializeApp } from 'firebase-admin/app';
import { getMessaging } from 'firebase-admin/messaging';
import { env } from './env.js';

const backendRoot = resolve(dirname(fileURLToPath(import.meta.url)), '../..');

const loadCredential = () => {
  if (env.firebase.serviceAccountJson) {
    return cert(JSON.parse(env.firebase.serviceAccountJson));
  }

  if (!env.firebase.serviceAccountPath) {
    return null;
  }

  const serviceAccountPath = resolve(backendRoot, env.firebase.serviceAccountPath);
  if (!existsSync(serviceAccountPath)) {
    return null;
  }

  return cert(JSON.parse(readFileSync(serviceAccountPath, 'utf8')));
};

export const getFirebaseAdmin = () => {
  if (getApps().length > 0) {
    return getApp();
  }

  const credential = loadCredential();
  if (!credential) {
    return null;
  }

  return initializeApp({
    credential,
    projectId: env.firebase.projectId,
  });
};

export const getFirebaseMessaging = () => {
  const app = getFirebaseAdmin();
  return app ? getMessaging(app) : null;
};
