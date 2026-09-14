// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChainWriteImpl _$$ChainWriteImplFromJson(Map<String, dynamic> json) =>
    _$ChainWriteImpl(
      name: json['name'] as String?,
      code: json['code'] as String?,
      contactName: json['contactName'] as String?,
      contactEmail: json['contactEmail'] as String?,
      contactPhone: json['contactPhone'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$ChainWriteImplToJson(_$ChainWriteImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'contactName': instance.contactName,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'active': instance.active,
    };
