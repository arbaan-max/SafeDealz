import { existsSync, readFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import admin from 'firebase-admin';
import { env } from './env.js';

const backendRoot = resolve(dirname(fileURLToPath(import.meta.url)), '../..');

const loadCredential = () => {
  if (env.firebase.serviceAccountJson) {
    return admin.credential.cert(JSON.parse(env.firebase.serviceAccountJson));
  }

  if (!env.firebase.serviceAccountPath) {
    return null;
  }

  const serviceAccountPath = resolve(backendRoot, env.firebase.serviceAccountPath);
  if (!existsSync(serviceAccountPath)) {
    return null;
  }

  return admin.credential.cert(JSON.parse(readFileSync(serviceAccountPath, 'utf8')));
};

export const getFirebaseAdmin = () => {
  if (admin.apps.length > 0) {
    return admin.app();
  }

  const credential = loadCredential();
  if (!credential) {
    return null;
  }

  return admin.initializeApp({
    credential,
    projectId: env.firebase.projectId,
  });
};

export const getFirebaseMessaging = () => {
  const app = getFirebaseAdmin();
  return app ? admin.messaging(app) : null;
};
