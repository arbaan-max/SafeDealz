// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'purchased_device.dart';

part 'deal_verify_write.freezed.dart';
part 'deal_verify_write.g.dart';

@Freezed()
class DealVerifyWrite with _$DealVerifyWrite {
  const factory DealVerifyWrite({
    required String customerName,
    required String customerPhone,
    required String otp,
    required bool idCaptured,
    required bool portraitCaptured,
    required PurchasedDevice purchasedDevice,
  }) = _DealVerifyWrite;
  
  factory DealVerifyWrite.fromJson(Map<String, Object?> json) => _$DealVerifyWriteFromJson(json);
}
