// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'audit_event.dart';

part 'audit_list_response.freezed.dart';
part 'audit_list_response.g.dart';

@Freezed()
abstract class AuditListResponse with _$AuditListResponse {
  const factory AuditListResponse({
    required bool success,
    required List<AuditEvent> data,
  }) = _AuditListResponse;
  
  factory AuditListResponse.fromJson(Map<String, Object?> json) => _$AuditListResponseFromJson(json);
}
