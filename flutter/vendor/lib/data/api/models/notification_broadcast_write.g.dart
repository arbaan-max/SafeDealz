// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_broadcast_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationBroadcastWrite _$NotificationBroadcastWriteFromJson(
  Map<String, dynamic> json,
) => _NotificationBroadcastWrite(
  audience: NotificationBroadcastWriteAudience.fromJson(
    json['audience'] as String,
  ),
  title: json['title'] as String,
  body: json['body'] as String,
  category: json['category'] as String?,
  branchId: json['branchId'] as String?,
  accountId: json['accountId'] as String?,
);

Map<String, dynamic> _$NotificationBroadcastWriteToJson(
  _NotificationBroadcastWrite instance,
) => <String, dynamic>{
  'audience': instance.audience,
  'title': instance.title,
  'body': instance.body,
  'category': instance.category,
  'branchId': instance.branchId,
  'accountId': instance.accountId,
};
