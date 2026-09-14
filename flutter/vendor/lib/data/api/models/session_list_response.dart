// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_session.dart';

part 'session_list_response.freezed.dart';
part 'session_list_response.g.dart';

@Freezed()
class SessionListResponse with _$SessionListResponse {
  const factory SessionListResponse({
    required bool success,
    required List<AccountSession> data,
  }) = _SessionListResponse;
  
  factory SessionListResponse.fromJson(Map<String, Object?> json) => _$SessionListResponseFromJson(json);
}
