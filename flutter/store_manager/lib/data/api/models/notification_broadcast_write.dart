// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_broadcast_write_audience.dart';

part 'notification_broadcast_write.freezed.dart';
part 'notification_broadcast_write.g.dart';

@Freezed()
abstract class NotificationBroadcastWrite with _$NotificationBroadcastWrite {
  const factory NotificationBroadcastWrite({
    required NotificationBroadcastWriteAudience audience,
    required String title,
    required String body,
    String? category,
    String? branchId,
    String? accountId,
  }) = _NotificationBroadcastWrite;
  
  factory NotificationBroadcastWrite.fromJson(Map<String, Object?> json) => _$NotificationBroadcastWriteFromJson(json);
}
