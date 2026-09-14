// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDataImpl _$$AuthDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthDataImpl(
      accessToken: json['accessToken'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
      account: AccountSummary.fromJson(json['account'] as Map<String, dynamic>),
      refreshToken: json['refreshToken'] as String?,
      csrfToken: json['csrfToken'] as String?,
    );

Map<String, dynamic> _$$AuthDataImplToJson(_$AuthDataImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'account': instance.account,
      'refreshToken': instance.refreshToken,
      'csrfToken': instance.csrfToken,
    };
