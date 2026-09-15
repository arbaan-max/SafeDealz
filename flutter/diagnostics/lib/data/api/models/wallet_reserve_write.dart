// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_reserve_write.freezed.dart';
part 'wallet_reserve_write.g.dart';

@Freezed()
abstract class WalletReserveWrite with _$WalletReserveWrite {
  const factory WalletReserveWrite({
    required int amountPaise,
    required String idempotencyKey,
    String? reason,
    String? referenceId,
    String? vendorAccountId,
  }) = _WalletReserveWrite;
  
  factory WalletReserveWrite.fromJson(Map<String, Object?> json) => _$WalletReserveWriteFromJson(json);
}
