// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicketListResponse _$SupportTicketListResponseFromJson(
  Map<String, dynamic> json,
) => _SupportTicketListResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => SupportTicket.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SupportTicketListResponseToJson(
  _SupportTicketListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
