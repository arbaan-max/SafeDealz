// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data3Impl _$$Data3ImplFromJson(Map<String, dynamic> json) => _$Data3Impl(
  mediaId: json['mediaId'] as String?,
  objectKey: json['objectKey'] as String?,
  upload: json['upload'] == null
      ? null
      : SignedUrl.fromJson(json['upload'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$Data3ImplToJson(_$Data3Impl instance) =>
    <String, dynamic>{
      'mediaId': instance.mediaId,
      'objectKey': instance.objectKey,
      'upload': instance.upload,
    };
