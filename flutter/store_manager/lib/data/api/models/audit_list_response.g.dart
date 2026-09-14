// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuditListResponseImpl _$$AuditListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AuditListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => AuditEvent.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$AuditListResponseImplToJson(
  _$AuditListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
