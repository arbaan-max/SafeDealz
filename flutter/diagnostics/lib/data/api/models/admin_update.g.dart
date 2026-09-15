// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminUpdate _$AdminUpdateFromJson(Map<String, dynamic> json) => _AdminUpdate(
  displayName: json['displayName'] as String?,
  phone: json['phone'] as String?,
  password: json['password'] as String?,
  active: json['active'] as bool?,
  assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AdminUpdateToJson(_AdminUpdate instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'phone': instance.phone,
      'password': instance.password,
      'active': instance.active,
      'assignedBranchIds': instance.assignedBranchIds,
    };
