// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountSummaryImpl _$$AccountSummaryImplFromJson(Map<String, dynamic> json) =>
    _$AccountSummaryImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      role: AccountRole.fromJson(json['role'] as String),
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allStores: json['allStores'] as bool?,
    );

Map<String, dynamic> _$$AccountSummaryImplToJson(
  _$AccountSummaryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'role': instance.role,
  'displayName': instance.displayName,
  'phone': instance.phone,
  'active': instance.active,
  'assignedBranchIds': instance.assignedBranchIds,
  'allStores': instance.allStores,
};
