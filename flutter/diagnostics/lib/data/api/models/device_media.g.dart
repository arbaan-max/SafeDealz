// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceMedia _$DeviceMediaFromJson(Map<String, dynamic> json) => _DeviceMedia(
  id: json['id'] as String?,
  purpose: json['purpose'] as String?,
  objectKey: json['objectKey'] as String?,
  contentType: json['contentType'] as String?,
  sizeBytes: (json['sizeBytes'] as num?)?.toInt(),
);

Map<String, dynamic> _$DeviceMediaToJson(_DeviceMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purpose': instance.purpose,
      'objectKey': instance.objectKey,
      'contentType': instance.contentType,
      'sizeBytes': instance.sizeBytes,
    };
