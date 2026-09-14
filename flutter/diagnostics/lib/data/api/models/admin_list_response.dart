// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'admin_account.dart';

part 'admin_list_response.freezed.dart';
part 'admin_list_response.g.dart';

@Freezed()
class AdminListResponse with _$AdminListResponse {
  const factory AdminListResponse({
    required bool success,
    required List<AdminAccount> data,
  }) = _AdminListResponse;
  
  factory AdminListResponse.fromJson(Map<String, Object?> json) => _$AdminListResponseFromJson(json);
}
