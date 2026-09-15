// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_media.freezed.dart';
part 'device_media.g.dart';

@Freezed()
abstract class DeviceMedia with _$DeviceMedia {
  const factory DeviceMedia({
    String? id,
    String? purpose,
    String? objectKey,
    String? contentType,
    int? sizeBytes,
  }) = _DeviceMedia;
  
  factory DeviceMedia.fromJson(Map<String, Object?> json) => _$DeviceMediaFromJson(json);
}
