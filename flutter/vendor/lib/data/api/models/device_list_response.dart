// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'device.dart';

part 'device_list_response.freezed.dart';
part 'device_list_response.g.dart';

@Freezed()
abstract class DeviceListResponse with _$DeviceListResponse {
  const factory DeviceListResponse({
    required bool success,
    required List<Device> data,
  }) = _DeviceListResponse;
  
  factory DeviceListResponse.fromJson(Map<String, Object?> json) => _$DeviceListResponseFromJson(json);
}
