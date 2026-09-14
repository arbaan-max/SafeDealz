// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketWriteImpl _$$SupportTicketWriteImplFromJson(
  Map<String, dynamic> json,
) => _$SupportTicketWriteImpl(
  subjectType: SupportTicketWriteSubjectType.fromJson(
    json['subjectType'] as String,
  ),
  subjectId: json['subjectId'] as String,
  reasonCode: SupportTicketWriteReasonCode.fromJson(
    json['reasonCode'] as String,
  ),
  notes: json['notes'] as String,
  idempotencyKey: json['idempotencyKey'] as String?,
);

Map<String, dynamic> _$$SupportTicketWriteImplToJson(
  _$SupportTicketWriteImpl instance,
) => <String, dynamic>{
  'subjectType': instance.subjectType,
  'subjectId': instance.subjectId,
  'reasonCode': instance.reasonCode,
  'notes': instance.notes,
  'idempotencyKey': instance.idempotencyKey,
};
