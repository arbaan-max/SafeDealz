// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendorCreate _$VendorCreateFromJson(Map<String, dynamic> json) =>
    _VendorCreate(
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      phone: json['phone'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$VendorCreateToJson(_VendorCreate instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'password': instance.password,
      'assignedBranchIds': instance.assignedBranchIds,
      'phone': instance.phone,
      'active': instance.active,
    };
