// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'support_ticket_write_reason_code.dart';
import 'support_ticket_write_subject_type.dart';

part 'support_ticket_write.freezed.dart';
part 'support_ticket_write.g.dart';

@Freezed()
class SupportTicketWrite with _$SupportTicketWrite {
  const factory SupportTicketWrite({
    required SupportTicketWriteSubjectType subjectType,
    required String subjectId,
    required SupportTicketWriteReasonCode reasonCode,
    required String notes,
    String? idempotencyKey,
  }) = _SupportTicketWrite;
  
  factory SupportTicketWrite.fromJson(Map<String, Object?> json) => _$SupportTicketWriteFromJson(json);
}
