// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendorUpdate _$VendorUpdateFromJson(Map<String, dynamic> json) =>
    _VendorUpdate(
      displayName: json['displayName'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$VendorUpdateToJson(_VendorUpdate instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'phone': instance.phone,
      'password': instance.password,
      'assignedBranchIds': instance.assignedBranchIds,
      'active': instance.active,
    };
