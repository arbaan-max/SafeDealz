import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CapturedEvidence {
  const CapturedEvidence({
    required this.purpose,
    required this.bytes,
    required this.contentType,
    this.filePath,
  });
  final String purpose;
  final Uint8List bytes;
  final String contentType;
  final String? filePath;
  String get checksumSha256 => sha256.convert(bytes).toString();
}

class EvidencePermissionDenied implements Exception {
  const EvidencePermissionDenied();
}

class EvidenceCaptureCancelled implements Exception {
  const EvidenceCaptureCancelled();
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

class CameraEvidenceCaptureAdapter implements EvidenceCaptureAdapter {
  CameraEvidenceCaptureAdapter([ImagePicker? picker]) : _picker = picker ?? ImagePicker();
  final ImagePicker _picker;

  @override
  Future<CapturedEvidence> capture(String purpose) async {
    final camera = await Permission.camera.request();
    if (!camera.isGranted) throw const EvidencePermissionDenied();
    final isVideo = purpose == 'rotation';
    if (isVideo) {
      final microphone = await Permission.microphone.request();
      if (!microphone.isGranted) throw const EvidencePermissionDenied();
    }
    final file = isVideo
        ? await _picker.pickVideo(
            source: ImageSource.camera,
            maxDuration: const Duration(seconds: 45),
          )
        : await _picker.pickImage(
            source: ImageSource.camera,
            imageQuality: 85,
            preferredCameraDevice: CameraDevice.rear,
          );
    if (file == null) throw const EvidenceCaptureCancelled();
    final bytes = await file.readAsBytes();
    return CapturedEvidence(
      purpose: purpose,
      bytes: bytes,
      contentType: isVideo ? 'video/mp4' : 'image/jpeg',
      filePath: file.path,
    );
  }
}
