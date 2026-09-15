// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'device_media.dart';
import 'device_platform.dart';
import 'inspection_record.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@Freezed()
abstract class Device with _$Device {
  const factory Device({
    required String id,
    required String branchId,
    required DevicePlatform platform,
    required String model,
    required String imei1,
    required String imei2,
    required String storage,
    required String status,
    String? ram,
    int? batteryHealth,
    InspectionRecord? inspection,
    List<DeviceMedia>? media,
  }) = _Device;
  
  factory Device.fromJson(Map<String, Object?> json) => _$DeviceFromJson(json);
}
