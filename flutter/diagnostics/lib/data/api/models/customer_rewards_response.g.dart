// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_rewards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerRewardsResponseImpl _$$CustomerRewardsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerRewardsResponseImpl(
  success: json['success'] as bool,
  data: CustomerRewards.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CustomerRewardsResponseImplToJson(
  _$CustomerRewardsResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
