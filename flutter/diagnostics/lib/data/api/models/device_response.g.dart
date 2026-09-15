// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceResponse _$DeviceResponseFromJson(Map<String, dynamic> json) =>
    _DeviceResponse(
      success: json['success'] as bool,
      data: Device.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceResponseToJson(_DeviceResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
