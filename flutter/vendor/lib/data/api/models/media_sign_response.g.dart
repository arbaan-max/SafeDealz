// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_sign_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaSignResponse _$MediaSignResponseFromJson(Map<String, dynamic> json) =>
    _MediaSignResponse(
      success: json['success'] as bool,
      data: Data7.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaSignResponseToJson(_MediaSignResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
