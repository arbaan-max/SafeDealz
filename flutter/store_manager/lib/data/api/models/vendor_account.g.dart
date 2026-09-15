// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendorAccount _$VendorAccountFromJson(Map<String, dynamic> json) =>
    _VendorAccount(
      id: json['id'] as String,
      email: json['email'] as String,
      role: AccountRole.fromJson(json['role'] as String),
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      wallet: json['wallet'] == null
          ? null
          : VendorWallet.fromJson(json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendorAccountToJson(_VendorAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'displayName': instance.displayName,
      'phone': instance.phone,
      'active': instance.active,
      'assignedBranchIds': instance.assignedBranchIds,
      'wallet': instance.wallet,
    };
