// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet_hold_status.dart';

part 'wallet_hold.freezed.dart';
part 'wallet_hold.g.dart';

@Freezed()
class WalletHold with _$WalletHold {
  const factory WalletHold({
    String? id,
    int? amountPaise,
    WalletHoldStatus? status,
    String? reason,
    String? idempotencyKey,
    String? referenceId,
    DateTime? createdAt,
  }) = _WalletHold;
  
  factory WalletHold.fromJson(Map<String, Object?> json) => _$WalletHoldFromJson(json);
}
