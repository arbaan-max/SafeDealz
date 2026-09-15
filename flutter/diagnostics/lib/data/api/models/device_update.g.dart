// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceUpdate _$DeviceUpdateFromJson(Map<String, dynamic> json) =>
    _DeviceUpdate(
      model: json['model'] as String?,
      imei1: json['imei1'] as String?,
      imei2: json['imei2'] as String?,
      storage: json['storage'] as String?,
      ram: json['ram'] as String?,
      batteryHealth: (json['batteryHealth'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DeviceUpdateToJson(_DeviceUpdate instance) =>
    <String, dynamic>{
      'model': instance.model,
      'imei1': instance.imei1,
      'imei2': instance.imei2,
      'storage': instance.storage,
      'ram': instance.ram,
      'batteryHealth': instance.batteryHealth,
    };
