// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordChangeResponse _$PasswordChangeResponseFromJson(
  Map<String, dynamic> json,
) => _PasswordChangeResponse(
  success: json['success'] as bool,
  data: PasswordChange.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PasswordChangeResponseToJson(
  _PasswordChangeResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
