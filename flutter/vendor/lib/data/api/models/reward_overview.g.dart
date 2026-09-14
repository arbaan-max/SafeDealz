// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardOverviewImpl _$$RewardOverviewImplFromJson(Map<String, dynamic> json) =>
    _$RewardOverviewImpl(
      branches: (json['branches'] as List<dynamic>?)
          ?.map((e) => RewardBranchTotal.fromJson(e as Map<String, dynamic>))
          .toList(),
      totals: json['totals'] == null
          ? null
          : RewardBranchTotal.fromJson(json['totals'] as Map<String, dynamic>),
      policy: json['policy'] == null
          ? null
          : RewardPolicy.fromJson(json['policy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RewardOverviewImplToJson(
  _$RewardOverviewImpl instance,
) => <String, dynamic>{
  'branches': instance.branches,
  'totals': instance.totals,
  'policy': instance.policy,
};
