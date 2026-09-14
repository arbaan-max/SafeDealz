// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reward_branch_total.dart';
import 'reward_policy.dart';

part 'reward_overview.freezed.dart';
part 'reward_overview.g.dart';

@Freezed()
class RewardOverview with _$RewardOverview {
  const factory RewardOverview({
    List<RewardBranchTotal>? branches,
    RewardBranchTotal? totals,
    RewardPolicy? policy,
  }) = _RewardOverview;
  
  factory RewardOverview.fromJson(Map<String, Object?> json) => _$RewardOverviewFromJson(json);
}
