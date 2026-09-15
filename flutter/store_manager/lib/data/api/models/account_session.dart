// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_session.freezed.dart';
part 'account_session.g.dart';

@Freezed()
abstract class AccountSession with _$AccountSession {
  const factory AccountSession({
    String? id,
    String? clientType,
    DateTime? createdAt,
    DateTime? expiresAt,
    DateTime? revokedAt,
    bool? current,
  }) = _AccountSession;
  
  factory AccountSession.fromJson(Map<String, Object?> json) => _$AccountSessionFromJson(json);
}
