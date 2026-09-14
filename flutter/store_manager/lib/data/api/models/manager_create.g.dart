// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManagerCreateImpl _$$ManagerCreateImplFromJson(Map<String, dynamic> json) =>
    _$ManagerCreateImpl(
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      branchId: json['branchId'] as String,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$ManagerCreateImplToJson(_$ManagerCreateImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'password': instance.password,
      'branchId': instance.branchId,
      'phone': instance.phone,
      'active': instance.active,
    };
