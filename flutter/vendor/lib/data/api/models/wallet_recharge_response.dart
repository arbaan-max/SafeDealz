// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet_recharge.dart';

part 'wallet_recharge_response.freezed.dart';
part 'wallet_recharge_response.g.dart';

@Freezed()
abstract class WalletRechargeResponse with _$WalletRechargeResponse {
  const factory WalletRechargeResponse({
    required bool success,
    required WalletRecharge data,
  }) = _WalletRechargeResponse;
  
  factory WalletRechargeResponse.fromJson(Map<String, Object?> json) => _$WalletRechargeResponseFromJson(json);
}
