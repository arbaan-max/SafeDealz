// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data5.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data5Impl _$$Data5ImplFromJson(Map<String, dynamic> json) => _$Data5Impl(
  objectKey: json['objectKey'] as String?,
  download: json['download'] == null
      ? null
      : SignedUrl.fromJson(json['download'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$Data5ImplToJson(_$Data5Impl instance) =>
    <String, dynamic>{
      'objectKey': instance.objectKey,
      'download': instance.download,
    };
