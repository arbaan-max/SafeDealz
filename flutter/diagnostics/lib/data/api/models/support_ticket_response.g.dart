// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicketResponse _$SupportTicketResponseFromJson(
  Map<String, dynamic> json,
) => _SupportTicketResponse(
  success: json['success'] as bool,
  data: SupportTicket.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SupportTicketResponseToJson(
  _SupportTicketResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
