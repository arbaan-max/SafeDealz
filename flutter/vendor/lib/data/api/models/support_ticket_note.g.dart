// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportTicketNote _$SupportTicketNoteFromJson(Map<String, dynamic> json) =>
    _SupportTicketNote(
      id: json['id'] as String?,
      authorAccountId: json['authorAccountId'] as String?,
      authorRole: json['authorRole'] as String?,
      body: json['body'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$SupportTicketNoteToJson(_SupportTicketNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorAccountId': instance.authorAccountId,
      'authorRole': instance.authorRole,
      'body': instance.body,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
