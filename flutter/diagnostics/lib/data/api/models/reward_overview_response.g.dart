// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_overview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardOverviewResponseImpl _$$RewardOverviewResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RewardOverviewResponseImpl(
  success: json['success'] as bool,
  data: RewardOverview.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RewardOverviewResponseImplToJson(
  _$RewardOverviewResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
