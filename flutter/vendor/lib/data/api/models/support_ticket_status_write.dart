// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'support_ticket_status_write_status.dart';

part 'support_ticket_status_write.freezed.dart';
part 'support_ticket_status_write.g.dart';

@Freezed()
class SupportTicketStatusWrite with _$SupportTicketStatusWrite {
  const factory SupportTicketStatusWrite({
    required SupportTicketStatusWriteStatus status,
    String? note,
  }) = _SupportTicketStatusWrite;
  
  factory SupportTicketStatusWrite.fromJson(Map<String, Object?> json) => _$SupportTicketStatusWriteFromJson(json);
}
