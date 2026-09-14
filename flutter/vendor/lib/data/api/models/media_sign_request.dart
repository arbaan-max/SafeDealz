// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_sign_request_purpose.dart';

part 'media_sign_request.freezed.dart';
part 'media_sign_request.g.dart';

@Freezed()
class MediaSignRequest with _$MediaSignRequest {
  const factory MediaSignRequest({
    required MediaSignRequestPurpose purpose,
    required String contentType,
    required int sizeBytes,
    required String checksumSha256,
  }) = _MediaSignRequest;
  
  factory MediaSignRequest.fromJson(Map<String, Object?> json) => _$MediaSignRequestFromJson(json);
}
