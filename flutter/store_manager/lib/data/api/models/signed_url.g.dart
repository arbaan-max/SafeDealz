// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignedUrlImpl _$$SignedUrlImplFromJson(Map<String, dynamic> json) =>
    _$SignedUrlImpl(
      method: json['method'] as String?,
      url: json['url'] as String?,
      expiresAt: json['expiresAt'] as String?,
      live: json['live'] as bool?,
    );

Map<String, dynamic> _$$SignedUrlImplToJson(_$SignedUrlImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'url': instance.url,
      'expiresAt': instance.expiresAt,
      'live': instance.live,
    };
