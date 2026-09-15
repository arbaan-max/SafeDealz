// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountSession _$AccountSessionFromJson(Map<String, dynamic> json) =>
    _AccountSession(
      id: json['id'] as String?,
      clientType: json['clientType'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      revokedAt: json['revokedAt'] == null
          ? null
          : DateTime.parse(json['revokedAt'] as String),
      current: json['current'] as bool?,
    );

Map<String, dynamic> _$AccountSessionToJson(_AccountSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientType': instance.clientType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'revokedAt': instance.revokedAt?.toIso8601String(),
      'current': instance.current,
    };
