// File generated for the SafeDealz Firebase project (safedealz-2e8d3).
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'Firebase is not configured for web on Diagnostics.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBt9KdyT73HX_86sEaqPI186oYOf7rR3Lc',
    appId: '1:171859737231:android:1083ba3f988fde36b88efa',
    messagingSenderId: '171859737231',
    projectId: 'safedealz-2e8d3',
    storageBucket: 'safedealz-2e8d3.firebasestorage.app',
  );
}
