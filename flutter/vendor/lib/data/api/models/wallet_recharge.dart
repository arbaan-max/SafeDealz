// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet_recharge_status.dart';

part 'wallet_recharge.freezed.dart';
part 'wallet_recharge.g.dart';

@Freezed()
class WalletRecharge with _$WalletRecharge {
  const factory WalletRecharge({
    required String id,
    required String vendorAccountId,
    required int amountPaise,
    required String orderId,
    required WalletRechargeStatus status,
    required String keyId,
    required bool clientAcknowledged,
    String? paymentId,
  }) = _WalletRecharge;
  
  factory WalletRecharge.fromJson(Map<String, Object?> json) => _$WalletRechargeFromJson(json);
}
