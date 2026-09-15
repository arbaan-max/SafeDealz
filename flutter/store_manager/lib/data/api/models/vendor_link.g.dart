// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendorLink _$VendorLinkFromJson(Map<String, dynamic> json) => _VendorLink(
  email: json['email'] as String,
  assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$VendorLinkToJson(_VendorLink instance) =>
    <String, dynamic>{
      'email': instance.email,
      'assignedBranchIds': instance.assignedBranchIds,
    };
