// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reward_policy_write_redemption_scope.dart';

part 'reward_policy_write.freezed.dart';
part 'reward_policy_write.g.dart';

@Freezed()
class RewardPolicyWrite with _$RewardPolicyWrite {
  const factory RewardPolicyWrite({
    int? earnPointsPerHundredRupees,
    int? pointValuePaise,
    List<String>? eligibleCategories,
    int? expiryDays,
    RewardPolicyWriteRedemptionScope? redemptionScope,
    bool? chainRedemptionEnabled,
    bool? multiBranchRedemptionEnabled,
    DateTime? effectiveFrom,
    String? note,
  }) = _RewardPolicyWrite;
  
  factory RewardPolicyWrite.fromJson(Map<String, Object?> json) => _$RewardPolicyWriteFromJson(json);
}
