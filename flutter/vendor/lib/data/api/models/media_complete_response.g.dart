// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_complete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaCompleteResponse _$MediaCompleteResponseFromJson(
  Map<String, dynamic> json,
) => _MediaCompleteResponse(
  success: json['success'] as bool,
  data: Data8.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MediaCompleteResponseToJson(
  _MediaCompleteResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
