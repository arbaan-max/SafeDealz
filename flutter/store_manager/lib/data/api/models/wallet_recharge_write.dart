// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_recharge_write.freezed.dart';
part 'wallet_recharge_write.g.dart';

@Freezed()
abstract class WalletRechargeWrite with _$WalletRechargeWrite {
  const factory WalletRechargeWrite({
    required int amountPaise,
    required String idempotencyKey,
  }) = _WalletRechargeWrite;
  
  factory WalletRechargeWrite.fromJson(Map<String, Object?> json) => _$WalletRechargeWriteFromJson(json);
}
