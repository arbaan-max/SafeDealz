// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_status.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@Freezed()
abstract class Notification with _$Notification {
  const factory Notification({
    String? id,
    String? title,
    String? body,
    String? category,
    String? audience,
    NotificationStatus? status,
    String? deepLink,
    String? branchId,
    String? campaignId,
    DateTime? readAt,
    DateTime? createdAt,
    String? recipientAccountId,
    String? recipientRole,
  }) = _Notification;
  
  factory Notification.fromJson(Map<String, Object?> json) => _$NotificationFromJson(json);
}
