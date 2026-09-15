// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_overview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardOverviewResponse _$RewardOverviewResponseFromJson(
  Map<String, dynamic> json,
) => _RewardOverviewResponse(
  success: json['success'] as bool,
  data: RewardOverview.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RewardOverviewResponseToJson(
  _RewardOverviewResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
