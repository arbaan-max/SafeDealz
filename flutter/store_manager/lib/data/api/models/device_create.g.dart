// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceCreateImpl _$$DeviceCreateImplFromJson(Map<String, dynamic> json) =>
    _$DeviceCreateImpl(
      branchId: json['branchId'] as String,
      platform: DeviceCreatePlatform.fromJson(json['platform'] as String),
      model: json['model'] as String,
      imei1: json['imei1'] as String,
      imei2: json['imei2'] as String,
      storage: json['storage'] as String,
      ram: json['ram'] as String?,
      batteryHealth: (json['batteryHealth'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DeviceCreateImplToJson(_$DeviceCreateImpl instance) =>
    <String, dynamic>{
      'branchId': instance.branchId,
      'platform': instance.platform,
      'model': instance.model,
      'imei1': instance.imei1,
      'imei2': instance.imei2,
      'storage': instance.storage,
      'ram': instance.ram,
      'batteryHealth': instance.batteryHealth,
    };
