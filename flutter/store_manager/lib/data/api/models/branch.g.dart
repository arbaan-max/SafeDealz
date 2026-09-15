// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Branch _$BranchFromJson(Map<String, dynamic> json) => _Branch(
  id: json['id'] as String,
  chainId: json['chainId'] as String,
  name: json['name'] as String,
  code: json['code'] as String,
  active: json['active'] as bool,
  address: json['address'] as String?,
  city: json['city'] as String?,
  contactName: json['contactName'] as String?,
  contactPhone: json['contactPhone'] as String?,
  beneficiaryName: json['beneficiaryName'] as String?,
  ifsc: json['ifsc'] as String?,
  accountNumberMasked: json['accountNumberMasked'] as String?,
  accountNumber: json['accountNumber'] as String?,
  payoutReady: json['payoutReady'] as bool?,
);

Map<String, dynamic> _$BranchToJson(_Branch instance) => <String, dynamic>{
  'id': instance.id,
  'chainId': instance.chainId,
  'name': instance.name,
  'code': instance.code,
  'active': instance.active,
  'address': instance.address,
  'city': instance.city,
  'contactName': instance.contactName,
  'contactPhone': instance.contactPhone,
  'beneficiaryName': instance.beneficiaryName,
  'ifsc': instance.ifsc,
  'accountNumberMasked': instance.accountNumberMasked,
  'accountNumber': instance.accountNumber,
  'payoutReady': instance.payoutReady,
};
