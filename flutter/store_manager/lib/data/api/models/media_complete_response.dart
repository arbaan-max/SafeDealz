// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data8.dart';

part 'media_complete_response.freezed.dart';
part 'media_complete_response.g.dart';

@Freezed()
abstract class MediaCompleteResponse with _$MediaCompleteResponse {
  const factory MediaCompleteResponse({
    required bool success,
    required Data8 data,
  }) = _MediaCompleteResponse;
  
  factory MediaCompleteResponse.fromJson(Map<String, Object?> json) => _$MediaCompleteResponseFromJson(json);
}
