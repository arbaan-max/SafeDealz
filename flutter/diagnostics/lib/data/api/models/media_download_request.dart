// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_download_request.freezed.dart';
part 'media_download_request.g.dart';

@Freezed()
class MediaDownloadRequest with _$MediaDownloadRequest {
  const factory MediaDownloadRequest({
    required String objectKey,
  }) = _MediaDownloadRequest;
  
  factory MediaDownloadRequest.fromJson(Map<String, Object?> json) => _$MediaDownloadRequestFromJson(json);
}
