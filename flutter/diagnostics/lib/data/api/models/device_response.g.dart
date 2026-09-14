// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceResponseImpl _$$DeviceResponseImplFromJson(Map<String, dynamic> json) =>
    _$DeviceResponseImpl(
      success: json['success'] as bool,
      data: Device.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceResponseImplToJson(
  _$DeviceResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
