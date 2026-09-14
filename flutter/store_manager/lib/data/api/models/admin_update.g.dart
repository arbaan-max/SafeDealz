// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminUpdateImpl _$$AdminUpdateImplFromJson(Map<String, dynamic> json) =>
    _$AdminUpdateImpl(
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      active: json['active'] as bool?,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AdminUpdateImplToJson(_$AdminUpdateImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'phone': instance.phone,
      'password': instance.password,
      'active': instance.active,
      'assignedBranchIds': instance.assignedBranchIds,
    };
