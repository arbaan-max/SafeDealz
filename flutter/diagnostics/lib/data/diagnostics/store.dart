import 'dart:convert';

import 'package:crypto/crypto.dart';

abstract interface class DiagnosticStore {
  Future<void> save(String payload);
  Future<String?> read();
}

class MemoryDiagnosticStore implements DiagnosticStore {
  MemoryDiagnosticStore({this.secret = 'local-diagnostic-store-secret'});
  final String secret;
  String? _sealed;

  @override
  Future<void> save(String payload) async {
    final key = utf8.encode(secret);
    final hmac = Hmac(sha256, key).convert(utf8.encode(payload)).toString();
    _sealed = jsonEncode({'hmac': hmac, 'payload': payload});
  }

  @override
  Future<String?> read() async {
    if (_sealed == null) return null;
    final decoded = jsonDecode(_sealed!) as Map<String, dynamic>;
    final payload = decoded['payload']?.toString() ?? '';
    final hmac = Hmac(sha256, utf8.encode(secret)).convert(utf8.encode(payload)).toString();
    if (hmac != decoded['hmac']) return null;
    return payload;
  }
}
