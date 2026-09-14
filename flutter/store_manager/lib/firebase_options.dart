// File generated for the SafeDealz Firebase project (safedealz-2e8d3).
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'Firebase is not configured for web on Store Manager.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBt9KdyT73HX_86sEaqPI186oYOf7rR3Lc',
    appId: '1:171859737231:android:e2f31f4dca0462acb88efa',
    messagingSenderId: '171859737231',
    projectId: 'safedealz-2e8d3',
    storageBucket: 'safedealz-2e8d3.firebasestorage.app',
  );
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBE4-3Lr1pNrA8LU7-QKbR2iKITge9qXnY',
    appId: '1:171859737231:ios:13ab655e9cf2c225b88efa',
    messagingSenderId: '171859737231',
    projectId: 'safedealz-2e8d3',
    storageBucket: 'safedealz-2e8d3.firebasestorage.app',
    iosBundleId: 'com.tekrio.safedealz.storemanager',
  );
}
