// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_role.dart';

part 'account_summary.freezed.dart';
part 'account_summary.g.dart';

@Freezed()
class AccountSummary with _$AccountSummary {
  const factory AccountSummary({
    required String id,
    required String email,
    required AccountRole role,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    bool? allStores,
  }) = _AccountSummary;
  
  factory AccountSummary.fromJson(Map<String, Object?> json) => _$AccountSummaryFromJson(json);
}
