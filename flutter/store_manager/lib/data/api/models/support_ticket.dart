// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'support_ticket_attachment.dart';
import 'support_ticket_creator_role.dart';
import 'support_ticket_note.dart';
import 'support_ticket_reason_code.dart';
import 'support_ticket_status.dart';
import 'support_ticket_subject_type.dart';

part 'support_ticket.freezed.dart';
part 'support_ticket.g.dart';

@Freezed()
class SupportTicket with _$SupportTicket {
  const factory SupportTicket({
    String? id,
    String? creatorAccountId,
    SupportTicketCreatorRole? creatorRole,
    SupportTicketSubjectType? subjectType,
    String? subjectId,
    String? branchId,
    SupportTicketReasonCode? reasonCode,
    SupportTicketStatus? status,
    String? ownerAccountId,
    List<SupportTicketNote>? notes,
    List<SupportTicketAttachment>? attachments,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SupportTicket;
  
  factory SupportTicket.fromJson(Map<String, Object?> json) => _$SupportTicketFromJson(json);
}
