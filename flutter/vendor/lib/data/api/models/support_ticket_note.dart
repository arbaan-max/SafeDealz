// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_ticket_note.freezed.dart';
part 'support_ticket_note.g.dart';

@Freezed()
abstract class SupportTicketNote with _$SupportTicketNote {
  const factory SupportTicketNote({
    String? id,
    String? authorAccountId,
    String? authorRole,
    String? body,
    DateTime? createdAt,
  }) = _SupportTicketNote;
  
  factory SupportTicketNote.fromJson(Map<String, Object?> json) => _$SupportTicketNoteFromJson(json);
}
