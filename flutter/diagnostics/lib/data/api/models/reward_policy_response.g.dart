// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_policy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardPolicyResponse _$RewardPolicyResponseFromJson(
  Map<String, dynamic> json,
) => _RewardPolicyResponse(
  success: json['success'] as bool,
  data: Data4.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RewardPolicyResponseToJson(
  _RewardPolicyResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
