// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'purchased_device_platform.dart';

part 'purchased_device.freezed.dart';
part 'purchased_device.g.dart';

@Freezed()
abstract class PurchasedDevice with _$PurchasedDevice {
  const factory PurchasedDevice({
    PurchasedDevicePlatform? platform,
    String? model,
    String? storage,
    String? ram,
    String? imei1,
    String? imei2,
  }) = _PurchasedDevice;
  
  factory PurchasedDevice.fromJson(Map<String, Object?> json) => _$PurchasedDeviceFromJson(json);
}
