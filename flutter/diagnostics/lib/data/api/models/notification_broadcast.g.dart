// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_broadcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationBroadcast _$NotificationBroadcastFromJson(
  Map<String, dynamic> json,
) => _NotificationBroadcast(
  campaignId: json['campaignId'] as String?,
  delivered: (json['delivered'] as num?)?.toInt(),
  deliveries: (json['deliveries'] as List<dynamic>?)
      ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NotificationBroadcastToJson(
  _NotificationBroadcast instance,
) => <String, dynamic>{
  'campaignId': instance.campaignId,
  'delivered': instance.delivered,
  'deliveries': instance.deliveries,
};
