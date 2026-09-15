// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
  id: json['id'] as String,
  branchId: json['branchId'] as String,
  platform: DevicePlatform.fromJson(json['platform'] as String),
  model: json['model'] as String,
  imei1: json['imei1'] as String,
  imei2: json['imei2'] as String,
  storage: json['storage'] as String,
  status: json['status'] as String,
  ram: json['ram'] as String?,
  batteryHealth: (json['batteryHealth'] as num?)?.toInt(),
  inspection: json['inspection'] == null
      ? null
      : InspectionRecord.fromJson(json['inspection'] as Map<String, dynamic>),
  media: (json['media'] as List<dynamic>?)
      ?.map((e) => DeviceMedia.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
  'id': instance.id,
  'branchId': instance.branchId,
  'platform': instance.platform,
  'model': instance.model,
  'imei1': instance.imei1,
  'imei2': instance.imei2,
  'storage': instance.storage,
  'status': instance.status,
  'ram': instance.ram,
  'batteryHealth': instance.batteryHealth,
  'inspection': instance.inspection,
  'media': instance.media,
};
