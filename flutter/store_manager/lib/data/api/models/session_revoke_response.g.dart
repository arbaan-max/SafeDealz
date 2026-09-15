// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_revoke_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionRevokeResponse _$SessionRevokeResponseFromJson(
  Map<String, dynamic> json,
) => _SessionRevokeResponse(
  success: json['success'] as bool,
  data: SessionRevoke.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SessionRevokeResponseToJson(
  _SessionRevokeResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
