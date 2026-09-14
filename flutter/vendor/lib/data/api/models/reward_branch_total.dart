// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_branch_total.freezed.dart';
part 'reward_branch_total.g.dart';

@Freezed()
class RewardBranchTotal with _$RewardBranchTotal {
  const factory RewardBranchTotal({
    String? branchId,
    String? branchName,
    int? issuedPoints,
    int? redeemedPoints,
    int? outstandingPoints,
    int? issuedValuePaise,
    int? redeemedValuePaise,
    int? outstandingValuePaise,
  }) = _RewardBranchTotal;
  
  factory RewardBranchTotal.fromJson(Map<String, Object?> json) => _$RewardBranchTotalFromJson(json);
}
