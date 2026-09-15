// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet_ledger_entry_type.dart';

part 'wallet_ledger_entry.freezed.dart';
part 'wallet_ledger_entry.g.dart';

@Freezed()
abstract class WalletLedgerEntry with _$WalletLedgerEntry {
  const factory WalletLedgerEntry({
    String? id,
    WalletLedgerEntryType? type,
    int? amountPaise,
    int? availableAfterPaise,
    int? reservedAfterPaise,
    String? reason,
    String? referenceId,
    DateTime? createdAt,
  }) = _WalletLedgerEntry;
  
  factory WalletLedgerEntry.fromJson(Map<String, Object?> json) => _$WalletLedgerEntryFromJson(json);
}
