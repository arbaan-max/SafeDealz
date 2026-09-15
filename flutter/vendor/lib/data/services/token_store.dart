import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStore {
  TokenStore({FlutterSecureStorage? storage})
    : _storage = storage ??
          const FlutterSecureStorage(
            aOptions: AndroidOptions(),
            iOptions: IOSOptions(
              accessibility: KeychainAccessibility.first_unlock,
            ),
          );
  final FlutterSecureStorage _storage;
  static const String _access = 'access_token';
  static const String _refresh = 'refresh_token';

  Future<String?> readAccess() => _read(_access);
  Future<String?> readRefresh() => _read(_refresh);

  Future<String?> _read(String key) async {
    try {
      final pending = _storage.read(key: key);
      if (Platform.environment.containsKey('FLUTTER_TEST')) {
        return await pending.timeout(
          const Duration(milliseconds: 80),
          onTimeout: () => null,
        );
      }
      return await pending;
    } catch (_) {
      return null;
    }
  }
  Future<void> save(String access, String refresh) async {
    await _storage.write(key: _access, value: access);
    await _storage.write(key: _refresh, value: refresh);
  }

  Future<void> clear() async {
    await _storage.delete(key: _access);
    await _storage.delete(key: _refresh);
  }
}
