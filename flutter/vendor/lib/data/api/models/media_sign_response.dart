// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data3.dart';

part 'media_sign_response.freezed.dart';
part 'media_sign_response.g.dart';

@Freezed()
class MediaSignResponse with _$MediaSignResponse {
  const factory MediaSignResponse({
    required bool success,
    required Data3 data,
  }) = _MediaSignResponse;
  
  factory MediaSignResponse.fromJson(Map<String, Object?> json) => _$MediaSignResponseFromJson(json);
}
