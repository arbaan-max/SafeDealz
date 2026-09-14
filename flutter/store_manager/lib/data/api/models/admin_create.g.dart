// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminCreateImpl _$$AdminCreateImplFromJson(Map<String, dynamic> json) =>
    _$AdminCreateImpl(
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AdminCreateImplToJson(_$AdminCreateImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'active': instance.active,
      'assignedBranchIds': instance.assignedBranchIds,
    };
