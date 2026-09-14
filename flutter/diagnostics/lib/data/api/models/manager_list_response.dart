// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'manager_account.dart';

part 'manager_list_response.freezed.dart';
part 'manager_list_response.g.dart';

@Freezed()
class ManagerListResponse with _$ManagerListResponse {
  const factory ManagerListResponse({
    required bool success,
    required List<ManagerAccount> data,
  }) = _ManagerListResponse;
  
  factory ManagerListResponse.fromJson(Map<String, Object?> json) => _$ManagerListResponseFromJson(json);
}
