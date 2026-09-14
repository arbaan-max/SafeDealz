// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reward_overview.dart';

part 'reward_overview_response.freezed.dart';
part 'reward_overview_response.g.dart';

@Freezed()
class RewardOverviewResponse with _$RewardOverviewResponse {
  const factory RewardOverviewResponse({
    required bool success,
    required RewardOverview data,
  }) = _RewardOverviewResponse;
  
  factory RewardOverviewResponse.fromJson(Map<String, Object?> json) => _$RewardOverviewResponseFromJson(json);
}
