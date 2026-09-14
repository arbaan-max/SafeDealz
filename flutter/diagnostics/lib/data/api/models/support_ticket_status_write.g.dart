// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_status_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketStatusWriteImpl _$$SupportTicketStatusWriteImplFromJson(
  Map<String, dynamic> json,
) => _$SupportTicketStatusWriteImpl(
  status: SupportTicketStatusWriteStatus.fromJson(json['status'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$$SupportTicketStatusWriteImplToJson(
  _$SupportTicketStatusWriteImpl instance,
) => <String, dynamic>{'status': instance.status, 'note': instance.note};
