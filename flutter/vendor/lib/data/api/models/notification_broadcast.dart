// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification.dart';

part 'notification_broadcast.freezed.dart';
part 'notification_broadcast.g.dart';

@Freezed()
class NotificationBroadcast with _$NotificationBroadcast {
  const factory NotificationBroadcast({
    String? campaignId,
    int? delivered,
    List<Notification>? deliveries,
  }) = _NotificationBroadcast;
  
  factory NotificationBroadcast.fromJson(Map<String, Object?> json) => _$NotificationBroadcastFromJson(json);
}
