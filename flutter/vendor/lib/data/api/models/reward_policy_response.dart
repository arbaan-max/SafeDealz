// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data4.dart';

part 'reward_policy_response.freezed.dart';
part 'reward_policy_response.g.dart';

@Freezed()
abstract class RewardPolicyResponse with _$RewardPolicyResponse {
  const factory RewardPolicyResponse({
    required bool success,
    required Data4 data,
  }) = _RewardPolicyResponse;
  
  factory RewardPolicyResponse.fromJson(Map<String, Object?> json) => _$RewardPolicyResponseFromJson(json);
}
