// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'support_ticket_attachment_status.dart';

part 'support_ticket_attachment.freezed.dart';
part 'support_ticket_attachment.g.dart';

@Freezed()
class SupportTicketAttachment with _$SupportTicketAttachment {
  const factory SupportTicketAttachment({
    String? id,
    String? objectKey,
    String? contentType,
    int? sizeBytes,
    SupportTicketAttachmentStatus? status,
  }) = _SupportTicketAttachment;
  
  factory SupportTicketAttachment.fromJson(Map<String, Object?> json) => _$SupportTicketAttachmentFromJson(json);
}
