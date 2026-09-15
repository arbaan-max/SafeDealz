// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data9.dart';

part 'media_download_response.freezed.dart';
part 'media_download_response.g.dart';

@Freezed()
abstract class MediaDownloadResponse with _$MediaDownloadResponse {
  const factory MediaDownloadResponse({
    required bool success,
    required Data9 data,
  }) = _MediaDownloadResponse;
  
  factory MediaDownloadResponse.fromJson(Map<String, Object?> json) => _$MediaDownloadResponseFromJson(json);
}
