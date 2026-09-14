// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reward_policy_redemption_scope.dart';

part 'reward_policy.freezed.dart';
part 'reward_policy.g.dart';

@Freezed()
class RewardPolicy with _$RewardPolicy {
  const factory RewardPolicy({
    String? id,
    int? version,
    int? earnPointsPerHundredRupees,
    int? pointValuePaise,
    List<String>? eligibleCategories,
    int? expiryDays,
    RewardPolicyRedemptionScope? redemptionScope,
    bool? chainRedemptionEnabled,
    bool? multiBranchRedemptionEnabled,
    bool? futureScopesInactive,
    DateTime? effectiveFrom,
    String? note,
  }) = _RewardPolicy;
  
  factory RewardPolicy.fromJson(Map<String, Object?> json) => _$RewardPolicyFromJson(json);
}
