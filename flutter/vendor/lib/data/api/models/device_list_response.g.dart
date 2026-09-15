// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceListResponse _$DeviceListResponseFromJson(Map<String, dynamic> json) =>
    _DeviceListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeviceListResponseToJson(_DeviceListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
