// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet_hold.dart';
import 'wallet_ledger_entry.dart';

part 'wallet_detail.freezed.dart';
part 'wallet_detail.g.dart';

@Freezed()
abstract class WalletDetail with _$WalletDetail {
  const factory WalletDetail({
    String? id,
    String? vendorAccountId,
    int? availablePaise,
    int? reservedPaise,
    int? processingPaise,
    int? paymentsProcessingPaise,
    String? currency,
    List<WalletLedgerEntry>? ledger,
    List<WalletHold>? reservations,
  }) = _WalletDetail;
  
  factory WalletDetail.fromJson(Map<String, Object?> json) => _$WalletDetailFromJson(json);
}
