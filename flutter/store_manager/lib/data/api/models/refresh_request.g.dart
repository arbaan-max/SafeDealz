// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshRequestImpl _$$RefreshRequestImplFromJson(Map<String, dynamic> json) =>
    _$RefreshRequestImpl(
      clientType: ClientType.fromJson(json['clientType'] as String),
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$RefreshRequestImplToJson(
  _$RefreshRequestImpl instance,
) => <String, dynamic>{
  'clientType': instance.clientType,
  'refreshToken': instance.refreshToken,
};
