// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditEvent _$AuditEventFromJson(Map<String, dynamic> json) => _AuditEvent(
  id: json['id'] as String?,
  actorId: json['actorId'] as String?,
  actorRole: json['actorRole'] as String?,
  action: json['action'] as String?,
  entityType: json['entityType'] as String?,
  entityId: json['entityId'] as String?,
  storeId: json['storeId'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  metadata: json['metadata'],
);

Map<String, dynamic> _$AuditEventToJson(_AuditEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'actorId': instance.actorId,
      'actorRole': instance.actorRole,
      'action': instance.action,
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'storeId': instance.storeId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'metadata': instance.metadata,
    };
