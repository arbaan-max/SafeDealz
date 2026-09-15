// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignedUrl _$SignedUrlFromJson(Map<String, dynamic> json) => _SignedUrl(
  method: json['method'] as String?,
  url: json['url'] as String?,
  expiresAt: json['expiresAt'] as String?,
  live: json['live'] as bool?,
);

Map<String, dynamic> _$SignedUrlToJson(_SignedUrl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'url': instance.url,
      'expiresAt': instance.expiresAt,
      'live': instance.live,
    };
