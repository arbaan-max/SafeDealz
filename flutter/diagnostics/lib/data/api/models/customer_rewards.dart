// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reward_balance.dart';
import 'reward_ledger_entry.dart';

part 'customer_rewards.freezed.dart';
part 'customer_rewards.g.dart';

@Freezed()
class CustomerRewards with _$CustomerRewards {
  const factory CustomerRewards({
    String? phone,
    String? customerName,
    List<RewardBalance>? balances,
    List<RewardLedgerEntry>? entries,
  }) = _CustomerRewards;
  
  factory CustomerRewards.fromJson(Map<String, Object?> json) => _$CustomerRewardsFromJson(json);
}
