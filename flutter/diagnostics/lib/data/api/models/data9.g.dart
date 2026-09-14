// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data9.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data9Impl _$$Data9ImplFromJson(Map<String, dynamic> json) => _$Data9Impl(
  objectKey: json['objectKey'] as String?,
  download: json['download'] == null
      ? null
      : SignedUrl.fromJson(json['download'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$Data9ImplToJson(_$Data9Impl instance) =>
    <String, dynamic>{
      'objectKey': instance.objectKey,
      'download': instance.download,
    };
