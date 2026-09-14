// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_revoke_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionRevokeResponseImpl _$$SessionRevokeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SessionRevokeResponseImpl(
  success: json['success'] as bool,
  data: SessionRevoke.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SessionRevokeResponseImplToJson(
  _$SessionRevokeResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
