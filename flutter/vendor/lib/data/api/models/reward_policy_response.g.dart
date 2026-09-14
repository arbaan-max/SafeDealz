// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_policy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardPolicyResponseImpl _$$RewardPolicyResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RewardPolicyResponseImpl(
  success: json['success'] as bool,
  data: Data4.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RewardPolicyResponseImplToJson(
  _$RewardPolicyResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
