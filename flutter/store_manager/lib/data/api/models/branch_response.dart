// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'branch.dart';

part 'branch_response.freezed.dart';
part 'branch_response.g.dart';

@Freezed()
abstract class BranchResponse with _$BranchResponse {
  const factory BranchResponse({
    required bool success,
    required Branch data,
  }) = _BranchResponse;
  
  factory BranchResponse.fromJson(Map<String, Object?> json) => _$BranchResponseFromJson(json);
}
