// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'branch.dart';

part 'branch_list_response.freezed.dart';
part 'branch_list_response.g.dart';

@Freezed()
class BranchListResponse with _$BranchListResponse {
  const factory BranchListResponse({
    required bool success,
    required List<Branch> data,
  }) = _BranchListResponse;
  
  factory BranchListResponse.fromJson(Map<String, Object?> json) => _$BranchListResponseFromJson(json);
}
