// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorLinkImpl _$$VendorLinkImplFromJson(Map<String, dynamic> json) =>
    _$VendorLinkImpl(
      email: json['email'] as String,
      assignedBranchIds: (json['assignedBranchIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$VendorLinkImplToJson(_$VendorLinkImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'assignedBranchIds': instance.assignedBranchIds,
    };
