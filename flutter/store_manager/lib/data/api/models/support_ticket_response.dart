// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'support_ticket.dart';

part 'support_ticket_response.freezed.dart';
part 'support_ticket_response.g.dart';

@Freezed()
class SupportTicketResponse with _$SupportTicketResponse {
  const factory SupportTicketResponse({
    required bool success,
    required SupportTicket data,
  }) = _SupportTicketResponse;
  
  factory SupportTicketResponse.fromJson(Map<String, Object?> json) => _$SupportTicketResponseFromJson(json);
}
