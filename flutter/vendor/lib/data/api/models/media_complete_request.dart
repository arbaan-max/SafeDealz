// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_complete_request.freezed.dart';
part 'media_complete_request.g.dart';

@Freezed()
class MediaCompleteRequest with _$MediaCompleteRequest {
  const factory MediaCompleteRequest({
    required String objectKey,
    required String checksumSha256,
  }) = _MediaCompleteRequest;
  
  factory MediaCompleteRequest.fromJson(Map<String, Object?> json) => _$MediaCompleteRequestFromJson(json);
}
