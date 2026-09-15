// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordChangeWrite _$PasswordChangeWriteFromJson(Map<String, dynamic> json) =>
    _PasswordChangeWrite(
      currentPassword: json['currentPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$PasswordChangeWriteToJson(
  _PasswordChangeWrite instance,
) => <String, dynamic>{
  'currentPassword': instance.currentPassword,
  'newPassword': instance.newPassword,
};
