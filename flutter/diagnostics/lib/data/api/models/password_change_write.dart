// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_change_write.freezed.dart';
part 'password_change_write.g.dart';

@Freezed()
class PasswordChangeWrite with _$PasswordChangeWrite {
  const factory PasswordChangeWrite({
    required String currentPassword,
    required String newPassword,
  }) = _PasswordChangeWrite;
  
  factory PasswordChangeWrite.fromJson(Map<String, Object?> json) => _$PasswordChangeWriteFromJson(json);
}
