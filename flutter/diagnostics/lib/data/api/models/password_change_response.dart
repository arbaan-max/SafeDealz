// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'password_change.dart';

part 'password_change_response.freezed.dart';
part 'password_change_response.g.dart';

@Freezed()
abstract class PasswordChangeResponse with _$PasswordChangeResponse {
  const factory PasswordChangeResponse({
    required bool success,
    required PasswordChange data,
  }) = _PasswordChangeResponse;
  
  factory PasswordChangeResponse.fromJson(Map<String, Object?> json) => _$PasswordChangeResponseFromJson(json);
}
