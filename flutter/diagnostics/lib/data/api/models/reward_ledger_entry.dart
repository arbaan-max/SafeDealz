// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reward_ledger_entry_type.dart';

part 'reward_ledger_entry.freezed.dart';
part 'reward_ledger_entry.g.dart';

@Freezed()
abstract class RewardLedgerEntry with _$RewardLedgerEntry {
  const factory RewardLedgerEntry({
    String? id,
    RewardLedgerEntryType? type,
    int? points,
    int? valuePaise,
    int? balanceAfter,
    String? branchId,
    String? dealId,
    String? invoiceNumber,
    int? policyVersion,
    int? earnPointsPerHundredRupees,
    int? pointValuePaise,
    String? reason,
    DateTime? createdAt,
  }) = _RewardLedgerEntry;
  
  factory RewardLedgerEntry.fromJson(Map<String, Object?> json) => _$RewardLedgerEntryFromJson(json);
}
