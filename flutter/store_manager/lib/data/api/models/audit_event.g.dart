// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuditEventImpl _$$AuditEventImplFromJson(Map<String, dynamic> json) =>
    _$AuditEventImpl(
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

Map<String, dynamic> _$$AuditEventImplToJson(_$AuditEventImpl instance) =>
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
