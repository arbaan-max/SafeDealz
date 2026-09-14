// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceListResponseImpl _$$DeviceListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DeviceListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Device.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$DeviceListResponseImplToJson(
  _$DeviceListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
