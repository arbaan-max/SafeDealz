// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data7.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data7Impl _$$Data7ImplFromJson(Map<String, dynamic> json) => _$Data7Impl(
  mediaId: json['mediaId'] as String?,
  objectKey: json['objectKey'] as String?,
  upload: json['upload'] == null
      ? null
      : SignedUrl.fromJson(json['upload'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$Data7ImplToJson(_$Data7Impl instance) =>
    <String, dynamic>{
      'mediaId': instance.mediaId,
      'objectKey': instance.objectKey,
      'upload': instance.upload,
    };
