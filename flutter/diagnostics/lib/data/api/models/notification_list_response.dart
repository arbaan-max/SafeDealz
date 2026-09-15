// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification.dart';

part 'notification_list_response.freezed.dart';
part 'notification_list_response.g.dart';

@Freezed()
abstract class NotificationListResponse with _$NotificationListResponse {
  const factory NotificationListResponse({
    required bool success,
    required List<Notification> data,
  }) = _NotificationListResponse;
  
  factory NotificationListResponse.fromJson(Map<String, Object?> json) => _$NotificationListResponseFromJson(json);
}
