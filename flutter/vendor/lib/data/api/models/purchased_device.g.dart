// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchased_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchasedDevice _$PurchasedDeviceFromJson(Map<String, dynamic> json) =>
    _PurchasedDevice(
      platform: json['platform'] == null
          ? null
          : PurchasedDevicePlatform.fromJson(json['platform'] as String),
      model: json['model'] as String?,
      storage: json['storage'] as String?,
      ram: json['ram'] as String?,
      imei1: json['imei1'] as String?,
      imei2: json['imei2'] as String?,
    );

Map<String, dynamic> _$PurchasedDeviceToJson(_PurchasedDevice instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'model': instance.model,
      'storage': instance.storage,
      'ram': instance.ram,
      'imei1': instance.imei1,
      'imei2': instance.imei2,
    };
