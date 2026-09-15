// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicketAttachment _$SupportTicketAttachmentFromJson(
  Map<String, dynamic> json,
) => _SupportTicketAttachment(
  id: json['id'] as String?,
  objectKey: json['objectKey'] as String?,
  contentType: json['contentType'] as String?,
  sizeBytes: (json['sizeBytes'] as num?)?.toInt(),
  status: json['status'] == null
      ? null
      : SupportTicketAttachmentStatus.fromJson(json['status'] as String),
);

Map<String, dynamic> _$SupportTicketAttachmentToJson(
  _SupportTicketAttachment instance,
) => <String, dynamic>{
  'id': instance.id,
  'objectKey': instance.objectKey,
  'contentType': instance.contentType,
  'sizeBytes': instance.sizeBytes,
  'status': instance.status,
};
