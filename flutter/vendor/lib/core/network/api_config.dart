import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class ApiConfig {
  static const String _override = String.fromEnvironment('API_BASE_URL');

  static String get baseUrl {
    if (_override.isNotEmpty) {
      return _override;
    }

    final String scheme = dotenv.env['HTTP_SCHEME'] ?? 'http';
    String host = dotenv.env['BASE_URL'] ?? 'localhost:5099';
    final String apiPath = dotenv.env['API_PATH'] ?? '/api';
    final String apiVersion = dotenv.env['API_VERSION'] ?? '/v1';

    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      host = host.replaceFirst(RegExp(r'^(localhost|127\.0\.0\.1)'), '10.0.2.2');
    }

    return '$scheme://$host$apiPath$apiVersion';
  }
}
