// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'signed_url.dart';

part 'ticket_attachment_sign.freezed.dart';
part 'ticket_attachment_sign.g.dart';

@Freezed()
abstract class TicketAttachmentSign with _$TicketAttachmentSign {
  const factory TicketAttachmentSign({
    String? attachmentId,
    String? objectKey,
    SignedUrl? upload,
  }) = _TicketAttachmentSign;
  
  factory TicketAttachmentSign.fromJson(Map<String, Object?> json) => _$TicketAttachmentSignFromJson(json);
}
