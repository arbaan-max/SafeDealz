import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:safedealz_store_manager/core/route/app_router.dart';

bool _inWidgetTest() => WidgetsBinding.instance.runtimeType
    .toString()
    .contains('TestWidgetsFlutterBinding');

String _pushPlatform() {
  if (kIsWeb) return 'web';
  switch (defaultTargetPlatform) {
    case TargetPlatform.iOS:
      return 'ios';
    default:
      return 'android';
  }
}

Future<void> prepareStoreManagerAccess(Dio dio) async {
  if (_inWidgetTest()) return;
  try {
    final needed = <Permission>[
      Permission.notification,
      Permission.camera,
      Permission.microphone,
    ];
    final missing = <Permission>[];
    for (final permission in needed) {
      if (!await permission.isGranted) missing.add(permission);
    }
    if (missing.isNotEmpty) {
      await _explainAccess();
      await needed.request();
    }
    await _registerPush(dio);
  } catch (_) {
    // Login still works when plugins or FCM are unavailable.
  }
}

Future<void> _explainAccess() async {
  final context = appNavigatorKey.currentContext;
  if (context == null || !context.mounted) return;
  await showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Allow access'),
      content: const Text(
        'SafeDealz needs notifications for new bids, camera access to capture device photos, and the microphone for 360° evidence video.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Continue'),
        ),
      ],
    ),
  );
}

Future<void> _registerPush(Dio dio) async {
  final messaging = FirebaseMessaging.instance;
  await messaging.requestPermission(alert: true, badge: true, sound: true);
  final token = await messaging.getToken();
  if (token == null || token.isEmpty) return;
  await dio.post<void>(
    '/auth/push-tokens',
    data: <String, String>{
      'token': token,
      'platform': _pushPlatform(),
      'client': 'store_manager',
    },
  );
}
