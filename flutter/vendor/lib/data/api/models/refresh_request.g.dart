// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshRequest _$RefreshRequestFromJson(Map<String, dynamic> json) =>
    _RefreshRequest(
      clientType: ClientType.fromJson(json['clientType'] as String),
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$RefreshRequestToJson(_RefreshRequest instance) =>
    <String, dynamic>{
      'clientType': instance.clientType,
      'refreshToken': instance.refreshToken,
    };
