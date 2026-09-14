import { initializeApp, type FirebaseApp } from 'firebase/app';

const firebaseConfig = {
  apiKey: import.meta.env.VITE_FIREBASE_API_KEY ?? 'AIzaSyBHsExWDmpS_4jI3DCgiX4BeSyqf1YfGaA',
  authDomain: import.meta.env.VITE_FIREBASE_AUTH_DOMAIN ?? 'safedealz-2e8d3.firebaseapp.com',
  projectId: import.meta.env.VITE_FIREBASE_PROJECT_ID ?? 'safedealz-2e8d3',
  storageBucket:
    import.meta.env.VITE_FIREBASE_STORAGE_BUCKET ?? 'safedealz-2e8d3.firebasestorage.app',
  messagingSenderId: import.meta.env.VITE_FIREBASE_MESSAGING_SENDER_ID ?? '171859737231',
  appId: import.meta.env.VITE_FIREBASE_APP_ID ?? '1:171859737231:web:2993aca3e109b69bb88efa',
};

export const firebaseApp: FirebaseApp = initializeApp(firebaseConfig);
