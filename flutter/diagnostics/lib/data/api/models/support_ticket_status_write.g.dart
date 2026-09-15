// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_status_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicketStatusWrite _$SupportTicketStatusWriteFromJson(
  Map<String, dynamic> json,
) => _SupportTicketStatusWrite(
  status: SupportTicketStatusWriteStatus.fromJson(json['status'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$SupportTicketStatusWriteToJson(
  _SupportTicketStatusWrite instance,
) => <String, dynamic>{'status': instance.status, 'note': instance.note};
