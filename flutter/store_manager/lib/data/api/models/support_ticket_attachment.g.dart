// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketAttachmentImpl _$$SupportTicketAttachmentImplFromJson(
  Map<String, dynamic> json,
) => _$SupportTicketAttachmentImpl(
  id: json['id'] as String?,
  objectKey: json['objectKey'] as String?,
  contentType: json['contentType'] as String?,
  sizeBytes: (json['sizeBytes'] as num?)?.toInt(),
  status: json['status'] == null
      ? null
      : SupportTicketAttachmentStatus.fromJson(json['status'] as String),
);

Map<String, dynamic> _$$SupportTicketAttachmentImplToJson(
  _$SupportTicketAttachmentImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'objectKey': instance.objectKey,
  'contentType': instance.contentType,
  'sizeBytes': instance.sizeBytes,
  'status': instance.status,
};
