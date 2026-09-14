// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_policy_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardPolicyWriteImpl _$$RewardPolicyWriteImplFromJson(
  Map<String, dynamic> json,
) => _$RewardPolicyWriteImpl(
  earnPointsPerHundredRupees: (json['earnPointsPerHundredRupees'] as num?)
      ?.toInt(),
  pointValuePaise: (json['pointValuePaise'] as num?)?.toInt(),
  eligibleCategories: (json['eligibleCategories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  expiryDays: (json['expiryDays'] as num?)?.toInt(),
  redemptionScope: json['redemptionScope'] == null
      ? null
      : RewardPolicyWriteRedemptionScope.fromJson(
          json['redemptionScope'] as String,
        ),
  chainRedemptionEnabled: json['chainRedemptionEnabled'] as bool?,
  multiBranchRedemptionEnabled: json['multiBranchRedemptionEnabled'] as bool?,
  effectiveFrom: json['effectiveFrom'] == null
      ? null
      : DateTime.parse(json['effectiveFrom'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$$RewardPolicyWriteImplToJson(
  _$RewardPolicyWriteImpl instance,
) => <String, dynamic>{
  'earnPointsPerHundredRupees': instance.earnPointsPerHundredRupees,
  'pointValuePaise': instance.pointValuePaise,
  'eligibleCategories': instance.eligibleCategories,
  'expiryDays': instance.expiryDays,
  'redemptionScope': instance.redemptionScope,
  'chainRedemptionEnabled': instance.chainRedemptionEnabled,
  'multiBranchRedemptionEnabled': instance.multiBranchRedemptionEnabled,
  'effectiveFrom': instance.effectiveFrom?.toIso8601String(),
  'note': instance.note,
};
