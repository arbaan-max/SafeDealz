// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_revoke.freezed.dart';
part 'session_revoke.g.dart';

@Freezed()
class SessionRevoke with _$SessionRevoke {
  const factory SessionRevoke({
    String? id,
    bool? revoked,
  }) = _SessionRevoke;
  
  factory SessionRevoke.fromJson(Map<String, Object?> json) => _$SessionRevokeFromJson(json);
}
