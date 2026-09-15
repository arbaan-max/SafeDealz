// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardPolicy _$RewardPolicyFromJson(
  Map<String, dynamic> json,
) => _RewardPolicy(
  id: json['id'] as String?,
  version: (json['version'] as num?)?.toInt(),
  earnPointsPerHundredRupees: (json['earnPointsPerHundredRupees'] as num?)
      ?.toInt(),
  pointValuePaise: (json['pointValuePaise'] as num?)?.toInt(),
  eligibleCategories: (json['eligibleCategories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  expiryDays: (json['expiryDays'] as num?)?.toInt(),
  redemptionScope: json['redemptionScope'] == null
      ? null
      : RewardPolicyRedemptionScope.fromJson(json['redemptionScope'] as String),
  chainRedemptionEnabled: json['chainRedemptionEnabled'] as bool?,
  multiBranchRedemptionEnabled: json['multiBranchRedemptionEnabled'] as bool?,
  futureScopesInactive: json['futureScopesInactive'] as bool?,
  effectiveFrom: json['effectiveFrom'] == null
      ? null
      : DateTime.parse(json['effectiveFrom'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$RewardPolicyToJson(_RewardPolicy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'earnPointsPerHundredRupees': instance.earnPointsPerHundredRupees,
      'pointValuePaise': instance.pointValuePaise,
      'eligibleCategories': instance.eligibleCategories,
      'expiryDays': instance.expiryDays,
      'redemptionScope': instance.redemptionScope,
      'chainRedemptionEnabled': instance.chainRedemptionEnabled,
      'multiBranchRedemptionEnabled': instance.multiBranchRedemptionEnabled,
      'futureScopesInactive': instance.futureScopesInactive,
      'effectiveFrom': instance.effectiveFrom?.toIso8601String(),
      'note': instance.note,
    };
