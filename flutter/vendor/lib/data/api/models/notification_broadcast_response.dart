// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_broadcast.dart';

part 'notification_broadcast_response.freezed.dart';
part 'notification_broadcast_response.g.dart';

@Freezed()
abstract class NotificationBroadcastResponse with _$NotificationBroadcastResponse {
  const factory NotificationBroadcastResponse({
    required bool success,
    required NotificationBroadcast data,
  }) = _NotificationBroadcastResponse;
  
  factory NotificationBroadcastResponse.fromJson(Map<String, Object?> json) => _$NotificationBroadcastResponseFromJson(json);
}
