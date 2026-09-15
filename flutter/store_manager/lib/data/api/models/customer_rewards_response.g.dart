// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_rewards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerRewardsResponse _$CustomerRewardsResponseFromJson(
  Map<String, dynamic> json,
) => _CustomerRewardsResponse(
  success: json['success'] as bool,
  data: CustomerRewards.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CustomerRewardsResponseToJson(
  _CustomerRewardsResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
