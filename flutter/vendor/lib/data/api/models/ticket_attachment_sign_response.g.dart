// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_sign_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketAttachmentSignResponseImpl _$$TicketAttachmentSignResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TicketAttachmentSignResponseImpl(
  success: json['success'] as bool,
  data: TicketAttachmentSign.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TicketAttachmentSignResponseImplToJson(
  _$TicketAttachmentSignResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
