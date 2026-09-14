import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

class CapturedEvidence {
  const CapturedEvidence({
    required this.purpose,
    required this.bytes,
    required this.contentType,
  });
  final String purpose;
  final Uint8List bytes;
  final String contentType;
  String get checksumSha256 => sha256.convert(bytes).toString();
}

class EvidencePermissionDenied implements Exception {
  const EvidencePermissionDenied();
}

abstract interface class EvidenceCaptureAdapter {
  Future<CapturedEvidence> capture(String purpose);
}

class DemoEvidenceCaptureAdapter implements EvidenceCaptureAdapter {
  const DemoEvidenceCaptureAdapter();

  @override
  Future<CapturedEvidence> capture(String purpose) async {
    final bytes = Uint8List.fromList(utf8.encode('demo-$purpose'));
    return CapturedEvidence(
      purpose: purpose,
      bytes: bytes,
      contentType: purpose == 'rotation' ? 'video/mp4' : 'image/jpeg',
    );
  }
}
