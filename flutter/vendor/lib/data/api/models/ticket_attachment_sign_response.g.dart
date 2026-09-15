// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_sign_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketAttachmentSignResponse _$TicketAttachmentSignResponseFromJson(
  Map<String, dynamic> json,
) => _TicketAttachmentSignResponse(
  success: json['success'] as bool,
  data: TicketAttachmentSign.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TicketAttachmentSignResponseToJson(
  _TicketAttachmentSignResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
