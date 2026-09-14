// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationListResponseImpl _$$NotificationListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Notification.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$NotificationListResponseImplToJson(
  _$NotificationListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
