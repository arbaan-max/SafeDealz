// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'support_ticket.dart';

part 'support_ticket_list_response.freezed.dart';
part 'support_ticket_list_response.g.dart';

@Freezed()
class SupportTicketListResponse with _$SupportTicketListResponse {
  const factory SupportTicketListResponse({
    required bool success,
    required List<SupportTicket> data,
  }) = _SupportTicketListResponse;
  
  factory SupportTicketListResponse.fromJson(Map<String, Object?> json) => _$SupportTicketListResponseFromJson(json);
}
