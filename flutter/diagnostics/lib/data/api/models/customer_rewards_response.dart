// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_rewards.dart';

part 'customer_rewards_response.freezed.dart';
part 'customer_rewards_response.g.dart';

@Freezed()
class CustomerRewardsResponse with _$CustomerRewardsResponse {
  const factory CustomerRewardsResponse({
    required bool success,
    required CustomerRewards data,
  }) = _CustomerRewardsResponse;
  
  factory CustomerRewardsResponse.fromJson(Map<String, Object?> json) => _$CustomerRewardsResponseFromJson(json);
}
