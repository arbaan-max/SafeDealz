import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class ApiConfig {
  static const String _override = String.fromEnvironment('API_BASE_URL');
  static const String _targetOverride = String.fromEnvironment('API_TARGET');

  static String get target {
    final fromDefine = _targetOverride.trim().toLowerCase();
    if (fromDefine.isNotEmpty) return fromDefine;
    return (dotenv.env['API_TARGET'] ?? 'local').trim().toLowerCase();
  }

  static bool get isLive => target == 'live';

  static String get baseUrl {
    if (_override.isNotEmpty) return _trimSlash(_override);

    if (isLive) {
      return _compose(
        dotenv.env['LIVE_HTTP_SCHEME'] ?? 'https',
        dotenv.env['LIVE_BASE_URL'] ?? 'safedealz-production.up.railway.app',
      );
    }

    final scheme = dotenv.env['LOCAL_HTTP_SCHEME'] ?? dotenv.env['HTTP_SCHEME'] ?? 'http';
    var host = dotenv.env['LOCAL_BASE_URL'] ?? dotenv.env['BASE_URL'] ?? 'localhost:5099';
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      host = host.replaceFirst(RegExp(r'^(localhost|127\.0\.0\.1)'), '10.0.2.2');
    }
    return _compose(scheme, host);
  }

  static String _compose(String scheme, String host) {
    final apiPath = dotenv.env['API_PATH'] ?? '/api';
    final apiVersion = dotenv.env['API_VERSION'] ?? '/v1';
    return '$scheme://$host$apiPath$apiVersion';
  }

  static String _trimSlash(String url) => url.endsWith('/') ? url.substring(0, url.length - 1) : url;
}
