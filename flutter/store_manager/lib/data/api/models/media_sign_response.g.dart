// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_sign_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaSignResponseImpl _$$MediaSignResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MediaSignResponseImpl(
  success: json['success'] as bool,
  data: Data7.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$MediaSignResponseImplToJson(
  _$MediaSignResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
