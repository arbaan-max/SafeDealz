// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketResponseImpl _$$SupportTicketResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SupportTicketResponseImpl(
  success: json['success'] as bool,
  data: SupportTicket.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SupportTicketResponseImplToJson(
  _$SupportTicketResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
