// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_sign_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketAttachmentSignWrite _$TicketAttachmentSignWriteFromJson(
  Map<String, dynamic> json,
) => _TicketAttachmentSignWrite(
  contentType: json['contentType'] as String,
  sizeBytes: (json['sizeBytes'] as num).toInt(),
  checksumSha256: json['checksumSha256'] as String,
);

Map<String, dynamic> _$TicketAttachmentSignWriteToJson(
  _TicketAttachmentSignWrite instance,
) => <String, dynamic>{
  'contentType': instance.contentType,
  'sizeBytes': instance.sizeBytes,
  'checksumSha256': instance.checksumSha256,
};
