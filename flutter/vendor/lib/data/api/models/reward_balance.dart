// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_balance.freezed.dart';
part 'reward_balance.g.dart';

@Freezed()
abstract class RewardBalance with _$RewardBalance {
  const factory RewardBalance({
    String? id,
    String? customerPhone,
    String? customerName,
    String? branchId,
    String? branchName,
    String? chainId,
    int? pointsBalance,
    int? issuedPoints,
    int? redeemedPoints,
    int? outstandingValuePaise,
    bool? redeemableAtThisBranch,
  }) = _RewardBalance;
  
  factory RewardBalance.fromJson(Map<String, Object?> json) => _$RewardBalanceFromJson(json);
}
