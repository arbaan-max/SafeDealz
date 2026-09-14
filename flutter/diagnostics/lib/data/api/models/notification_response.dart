// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@Freezed()
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    required bool success,
    required Notification data,
  }) = _NotificationResponse;
  
  factory NotificationResponse.fromJson(Map<String, Object?> json) => _$NotificationResponseFromJson(json);
}
