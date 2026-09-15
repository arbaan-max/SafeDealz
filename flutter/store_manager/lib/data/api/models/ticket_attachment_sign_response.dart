// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ticket_attachment_sign.dart';

part 'ticket_attachment_sign_response.freezed.dart';
part 'ticket_attachment_sign_response.g.dart';

@Freezed()
abstract class TicketAttachmentSignResponse with _$TicketAttachmentSignResponse {
  const factory TicketAttachmentSignResponse({
    required bool success,
    required TicketAttachmentSign data,
  }) = _TicketAttachmentSignResponse;
  
  factory TicketAttachmentSignResponse.fromJson(Map<String, Object?> json) => _$TicketAttachmentSignResponseFromJson(json);
}
