// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordChangeResponseImpl _$$PasswordChangeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PasswordChangeResponseImpl(
  success: json['success'] as bool,
  data: PasswordChange.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PasswordChangeResponseImplToJson(
  _$PasswordChangeResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
