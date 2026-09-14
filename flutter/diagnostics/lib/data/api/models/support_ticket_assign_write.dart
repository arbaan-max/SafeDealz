// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_ticket_assign_write.freezed.dart';
part 'support_ticket_assign_write.g.dart';

@Freezed()
class SupportTicketAssignWrite with _$SupportTicketAssignWrite {
  const factory SupportTicketAssignWrite({
    required String ownerAccountId,
  }) = _SupportTicketAssignWrite;
  
  factory SupportTicketAssignWrite.fromJson(Map<String, Object?> json) => _$SupportTicketAssignWriteFromJson(json);
}
