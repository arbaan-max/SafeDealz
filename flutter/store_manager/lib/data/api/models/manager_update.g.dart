// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ManagerUpdate _$ManagerUpdateFromJson(Map<String, dynamic> json) =>
    _ManagerUpdate(
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      branchId: json['branchId'] as String?,
      active: json['active'] as bool?,
      revokeSessions: json['revokeSessions'] as bool?,
    );

Map<String, dynamic> _$ManagerUpdateToJson(_ManagerUpdate instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'phone': instance.phone,
      'password': instance.password,
      'branchId': instance.branchId,
      'active': instance.active,
      'revokeSessions': instance.revokeSessions,
    };
