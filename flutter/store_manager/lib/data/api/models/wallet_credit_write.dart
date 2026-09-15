// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_credit_write.freezed.dart';
part 'wallet_credit_write.g.dart';

@Freezed()
abstract class WalletCreditWrite with _$WalletCreditWrite {
  const factory WalletCreditWrite({
    required int amountPaise,
    required String idempotencyKey,
    String? reason,
    String? referenceId,
  }) = _WalletCreditWrite;
  
  factory WalletCreditWrite.fromJson(Map<String, Object?> json) => _$WalletCreditWriteFromJson(json);
}
