// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data7.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data7 _$Data7FromJson(Map<String, dynamic> json) => _Data7(
  mediaId: json['mediaId'] as String?,
  objectKey: json['objectKey'] as String?,
  upload: json['upload'] == null
      ? null
      : SignedUrl.fromJson(json['upload'] as Map<String, dynamic>),
);

Map<String, dynamic> _$Data7ToJson(_Data7 instance) => <String, dynamic>{
  'mediaId': instance.mediaId,
  'objectKey': instance.objectKey,
  'upload': instance.upload,
};
