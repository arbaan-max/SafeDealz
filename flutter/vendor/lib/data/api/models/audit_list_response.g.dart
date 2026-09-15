// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditListResponse _$AuditListResponseFromJson(Map<String, dynamic> json) =>
    _AuditListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => AuditEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuditListResponseToJson(_AuditListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
