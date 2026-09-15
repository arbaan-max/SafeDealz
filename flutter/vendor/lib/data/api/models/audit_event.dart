// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_event.freezed.dart';
part 'audit_event.g.dart';

@Freezed()
abstract class AuditEvent with _$AuditEvent {
  const factory AuditEvent({
    String? id,
    String? actorId,
    String? actorRole,
    String? action,
    String? entityType,
    String? entityId,
    String? storeId,
    DateTime? createdAt,
    dynamic metadata,
  }) = _AuditEvent;
  
  factory AuditEvent.fromJson(Map<String, Object?> json) => _$AuditEventFromJson(json);
}
