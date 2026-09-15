// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_update.freezed.dart';
part 'device_update.g.dart';

@Freezed()
abstract class DeviceUpdate with _$DeviceUpdate {
  const factory DeviceUpdate({
    String? model,
    String? imei1,
    String? imei2,
    String? storage,
    String? ram,
    int? batteryHealth,
  }) = _DeviceUpdate;
  
  factory DeviceUpdate.fromJson(Map<String, Object?> json) => _$DeviceUpdateFromJson(json);
}
