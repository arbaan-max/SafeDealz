// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_broadcast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationBroadcastResponseImpl
_$$NotificationBroadcastResponseImplFromJson(Map<String, dynamic> json) =>
    _$NotificationBroadcastResponseImpl(
      success: json['success'] as bool,
      data: NotificationBroadcast.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$NotificationBroadcastResponseImplToJson(
  _$NotificationBroadcastResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
