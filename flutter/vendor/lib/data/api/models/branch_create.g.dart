// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchCreate _$BranchCreateFromJson(Map<String, dynamic> json) =>
    _BranchCreate(
      chainId: json['chainId'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      beneficiaryName: json['beneficiaryName'] as String,
      accountNumber: json['accountNumber'] as String,
      ifsc: json['ifsc'] as String,
      address: json['address'] as String?,
      city: json['city'] as String?,
      contactName: json['contactName'] as String?,
      contactPhone: json['contactPhone'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$BranchCreateToJson(_BranchCreate instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'name': instance.name,
      'code': instance.code,
      'beneficiaryName': instance.beneficiaryName,
      'accountNumber': instance.accountNumber,
      'ifsc': instance.ifsc,
      'address': instance.address,
      'city': instance.city,
      'contactName': instance.contactName,
      'contactPhone': instance.contactPhone,
      'active': instance.active,
    };
