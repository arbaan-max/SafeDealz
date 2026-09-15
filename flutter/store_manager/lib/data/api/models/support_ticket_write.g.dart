// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicketWrite _$SupportTicketWriteFromJson(Map<String, dynamic> json) =>
    _SupportTicketWrite(
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

Map<String, dynamic> _$SupportTicketWriteToJson(_SupportTicketWrite instance) =>
    <String, dynamic>{
      'subjectType': instance.subjectType,
      'subjectId': instance.subjectId,
      'reasonCode': instance.reasonCode,
      'notes': instance.notes,
      'idempotencyKey': instance.idempotencyKey,
    };
