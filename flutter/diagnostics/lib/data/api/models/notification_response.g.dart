// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationResponseImpl _$$NotificationResponseImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationResponseImpl(
  success: json['success'] as bool,
  data: Notification.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$NotificationResponseImplToJson(
  _$NotificationResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
