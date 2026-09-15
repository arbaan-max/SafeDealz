// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchUpdate _$BranchUpdateFromJson(Map<String, dynamic> json) =>
    _BranchUpdate(
      name: json['name'] as String?,
      code: json['code'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      contactName: json['contactName'] as String?,
      contactPhone: json['contactPhone'] as String?,
      beneficiaryName: json['beneficiaryName'] as String?,
      accountNumber: json['accountNumber'] as String?,
      ifsc: json['ifsc'] as String?,
      currentPassword: json['currentPassword'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$BranchUpdateToJson(_BranchUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'address': instance.address,
      'city': instance.city,
      'contactName': instance.contactName,
      'contactPhone': instance.contactPhone,
      'beneficiaryName': instance.beneficiaryName,
      'accountNumber': instance.accountNumber,
      'ifsc': instance.ifsc,
      'currentPassword': instance.currentPassword,
      'active': instance.active,
    };
