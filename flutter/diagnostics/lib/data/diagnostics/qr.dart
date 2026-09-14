import 'dart:convert';

import 'package:crypto/crypto.dart';

const defaultDiagnosticQrSecret = 'local-diagnostic-qr-secret-change-me-32';

Map<String, dynamic> diagnosticTransferPayload({
  required String imei1,
  required String imei2,
  required String nonce,
  required String expiresAt,
  required int touchPercent,
  required int touchAttempts,
  required List<Map<String, String>> checks,
}) {
  return {
    'imei1': imei1,
    'imei2': imei2,
    'nonce': nonce,
    'expiresAt': expiresAt,
    'touchPercent': touchPercent,
    'touchAttempts': touchAttempts,
    'checks': checks,
  };
}

String signDiagnosticPayload(
  Map<String, dynamic> payload, {
  String secret = defaultDiagnosticQrSecret,
}) {
  return Hmac(sha256, utf8.encode(secret)).convert(utf8.encode(jsonEncode(payload))).toString();
}

String encodeDiagnosticQr(Map<String, dynamic> payload, {String secret = defaultDiagnosticQrSecret}) =>
    jsonEncode({'payload': payload, 'signature': signDiagnosticPayload(payload, secret: secret)});
