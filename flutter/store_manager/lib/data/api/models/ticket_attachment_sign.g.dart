// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_sign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketAttachmentSignImpl _$$TicketAttachmentSignImplFromJson(
  Map<String, dynamic> json,
) => _$TicketAttachmentSignImpl(
  attachmentId: json['attachmentId'] as String?,
  objectKey: json['objectKey'] as String?,
  upload: json['upload'] == null
      ? null
      : SignedUrl.fromJson(json['upload'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TicketAttachmentSignImplToJson(
  _$TicketAttachmentSignImpl instance,
) => <String, dynamic>{
  'attachmentId': instance.attachmentId,
  'objectKey': instance.objectKey,
  'upload': instance.upload,
};
