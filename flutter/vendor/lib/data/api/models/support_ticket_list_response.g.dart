// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketListResponseImpl _$$SupportTicketListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SupportTicketListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => SupportTicket.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$SupportTicketListResponseImplToJson(
  _$SupportTicketListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
