// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data9.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data9 _$Data9FromJson(Map<String, dynamic> json) => _Data9(
  objectKey: json['objectKey'] as String?,
  download: json['download'] == null
      ? null
      : SignedUrl.fromJson(json['download'] as Map<String, dynamic>),
);

Map<String, dynamic> _$Data9ToJson(_Data9 instance) => <String, dynamic>{
  'objectKey': instance.objectKey,
  'download': instance.download,
};
