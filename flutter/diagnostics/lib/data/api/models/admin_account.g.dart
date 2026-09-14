// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminAccountImpl _$$AdminAccountImplFromJson(Map<String, dynamic> json) =>
    _$AdminAccountImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      role: AccountRole.fromJson(json['role'] as String),
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AdminAccountImplToJson(_$AdminAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'displayName': instance.displayName,
      'phone': instance.phone,
      'active': instance.active,
      'assignedBranchIds': instance.assignedBranchIds,
    };
