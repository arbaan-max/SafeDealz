// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_ticket_note_write.freezed.dart';
part 'support_ticket_note_write.g.dart';

@Freezed()
abstract class SupportTicketNoteWrite with _$SupportTicketNoteWrite {
  const factory SupportTicketNoteWrite({
    required String body,
  }) = _SupportTicketNoteWrite;
  
  factory SupportTicketNoteWrite.fromJson(Map<String, Object?> json) => _$SupportTicketNoteWriteFromJson(json);
}
