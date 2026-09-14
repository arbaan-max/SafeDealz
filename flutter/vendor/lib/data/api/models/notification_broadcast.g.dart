// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_broadcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationBroadcastImpl _$$NotificationBroadcastImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationBroadcastImpl(
  campaignId: json['campaignId'] as String?,
  delivered: (json['delivered'] as num?)?.toInt(),
  deliveries: (json['deliveries'] as List<dynamic>?)
      ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$NotificationBroadcastImplToJson(
  _$NotificationBroadcastImpl instance,
) => <String, dynamic>{
  'campaignId': instance.campaignId,
  'delivered': instance.delivered,
  'deliveries': instance.deliveries,
};
