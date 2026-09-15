// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chain _$ChainFromJson(Map<String, dynamic> json) => _Chain(
  id: json['id'] as String,
  name: json['name'] as String,
  code: json['code'] as String,
  active: json['active'] as bool,
  contactName: json['contactName'] as String?,
  contactEmail: json['contactEmail'] as String?,
  contactPhone: json['contactPhone'] as String?,
  branchCount: (json['branchCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChainToJson(_Chain instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'active': instance.active,
  'contactName': instance.contactName,
  'contactEmail': instance.contactEmail,
  'contactPhone': instance.contactPhone,
  'branchCount': instance.branchCount,
};
