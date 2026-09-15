// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicket _$SupportTicketFromJson(Map<String, dynamic> json) =>
    _SupportTicket(
      id: json['id'] as String?,
      creatorAccountId: json['creatorAccountId'] as String?,
      creatorRole: json['creatorRole'] == null
          ? null
          : SupportTicketCreatorRole.fromJson(json['creatorRole'] as String),
      subjectType: json['subjectType'] == null
          ? null
          : SupportTicketSubjectType.fromJson(json['subjectType'] as String),
      subjectId: json['subjectId'] as String?,
      branchId: json['branchId'] as String?,
      reasonCode: json['reasonCode'] == null
          ? null
          : SupportTicketReasonCode.fromJson(json['reasonCode'] as String),
      status: json['status'] == null
          ? null
          : SupportTicketStatus.fromJson(json['status'] as String),
      ownerAccountId: json['ownerAccountId'] as String?,
      notes: (json['notes'] as List<dynamic>?)
          ?.map((e) => SupportTicketNote.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map(
            (e) => SupportTicketAttachment.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SupportTicketToJson(_SupportTicket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorAccountId': instance.creatorAccountId,
      'creatorRole': instance.creatorRole,
      'subjectType': instance.subjectType,
      'subjectId': instance.subjectId,
      'branchId': instance.branchId,
      'reasonCode': instance.reasonCode,
      'status': instance.status,
      'ownerAccountId': instance.ownerAccountId,
      'notes': instance.notes,
      'attachments': instance.attachments,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
