// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_broadcast_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationBroadcastWriteImpl _$$NotificationBroadcastWriteImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationBroadcastWriteImpl(
  audience: NotificationBroadcastWriteAudience.fromJson(
    json['audience'] as String,
  ),
  title: json['title'] as String,
  body: json['body'] as String,
  category: json['category'] as String?,
  branchId: json['branchId'] as String?,
  accountId: json['accountId'] as String?,
);

Map<String, dynamic> _$$NotificationBroadcastWriteImplToJson(
  _$NotificationBroadcastWriteImpl instance,
) => <String, dynamic>{
  'audience': instance.audience,
  'title': instance.title,
  'body': instance.body,
  'category': instance.category,
  'branchId': instance.branchId,
  'accountId': instance.accountId,
};
