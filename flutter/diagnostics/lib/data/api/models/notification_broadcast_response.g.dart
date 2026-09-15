// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_broadcast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationBroadcastResponse _$NotificationBroadcastResponseFromJson(
  Map<String, dynamic> json,
) => _NotificationBroadcastResponse(
  success: json['success'] as bool,
  data: NotificationBroadcast.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NotificationBroadcastResponseToJson(
  _NotificationBroadcastResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
