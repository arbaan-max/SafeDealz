// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_sign_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaSignRequestImpl _$$MediaSignRequestImplFromJson(
  Map<String, dynamic> json,
) => _$MediaSignRequestImpl(
  purpose: MediaSignRequestPurpose.fromJson(json['purpose'] as String),
  contentType: json['contentType'] as String,
  sizeBytes: (json['sizeBytes'] as num).toInt(),
  checksumSha256: json['checksumSha256'] as String,
);

Map<String, dynamic> _$$MediaSignRequestImplToJson(
  _$MediaSignRequestImpl instance,
) => <String, dynamic>{
  'purpose': instance.purpose,
  'contentType': instance.contentType,
  'sizeBytes': instance.sizeBytes,
  'checksumSha256': instance.checksumSha256,
};
