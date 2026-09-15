// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'device.dart';

part 'device_response.freezed.dart';
part 'device_response.g.dart';

@Freezed()
abstract class DeviceResponse with _$DeviceResponse {
  const factory DeviceResponse({
    required bool success,
    required Device data,
  }) = _DeviceResponse;
  
  factory DeviceResponse.fromJson(Map<String, Object?> json) => _$DeviceResponseFromJson(json);
}
