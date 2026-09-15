// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_sign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketAttachmentSign _$TicketAttachmentSignFromJson(
  Map<String, dynamic> json,
) => _TicketAttachmentSign(
  attachmentId: json['attachmentId'] as String?,
  objectKey: json['objectKey'] as String?,
  upload: json['upload'] == null
      ? null
      : SignedUrl.fromJson(json['upload'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TicketAttachmentSignToJson(
  _TicketAttachmentSign instance,
) => <String, dynamic>{
  'attachmentId': instance.attachmentId,
  'objectKey': instance.objectKey,
  'upload': instance.upload,
};
