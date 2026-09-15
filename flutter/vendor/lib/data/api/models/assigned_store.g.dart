// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assigned_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssignedStore _$AssignedStoreFromJson(Map<String, dynamic> json) =>
    _AssignedStore(
      id: json['id'] as String,
      chainId: json['chainId'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      chainName: json['chainName'] as String,
      address: json['address'] as String?,
      city: json['city'] as String?,
      contactName: json['contactName'] as String?,
      contactPhone: json['contactPhone'] as String?,
      active: json['active'] as bool?,
      chainCode: json['chainCode'] as String?,
    );

Map<String, dynamic> _$AssignedStoreToJson(_AssignedStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chainId': instance.chainId,
      'name': instance.name,
      'code': instance.code,
      'chainName': instance.chainName,
      'address': instance.address,
      'city': instance.city,
      'contactName': instance.contactName,
      'contactPhone': instance.contactPhone,
      'active': instance.active,
      'chainCode': instance.chainCode,
    };
