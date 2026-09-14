// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'session_revoke.dart';

part 'session_revoke_response.freezed.dart';
part 'session_revoke_response.g.dart';

@Freezed()
class SessionRevokeResponse with _$SessionRevokeResponse {
  const factory SessionRevokeResponse({
    required bool success,
    required SessionRevoke data,
  }) = _SessionRevokeResponse;
  
  factory SessionRevokeResponse.fromJson(Map<String, Object?> json) => _$SessionRevokeResponseFromJson(json);
}
