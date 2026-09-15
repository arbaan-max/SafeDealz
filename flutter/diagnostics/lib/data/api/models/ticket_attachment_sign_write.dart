// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_attachment_sign_write.freezed.dart';
part 'ticket_attachment_sign_write.g.dart';

@Freezed()
abstract class TicketAttachmentSignWrite with _$TicketAttachmentSignWrite {
  const factory TicketAttachmentSignWrite({
    required String contentType,
    required int sizeBytes,
    required String checksumSha256,
  }) = _TicketAttachmentSignWrite;
  
  factory TicketAttachmentSignWrite.fromJson(Map<String, Object?> json) => _$TicketAttachmentSignWriteFromJson(json);
}
