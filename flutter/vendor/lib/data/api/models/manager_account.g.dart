// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ManagerAccount _$ManagerAccountFromJson(Map<String, dynamic> json) =>
    _ManagerAccount(
      id: json['id'] as String,
      email: json['email'] as String,
      role: AccountRole.fromJson(json['role'] as String),
      branchId: json['branchId'] as String,
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      activeSessionCount: (json['activeSessionCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ManagerAccountToJson(_ManagerAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'branchId': instance.branchId,
      'displayName': instance.displayName,
      'phone': instance.phone,
      'active': instance.active,
      'assignedBranchIds': instance.assignedBranchIds,
      'activeSessionCount': instance.activeSessionCount,
    };
