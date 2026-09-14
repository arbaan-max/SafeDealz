// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data5.dart';

part 'otp_response.freezed.dart';
part 'otp_response.g.dart';

@Freezed()
class OtpResponse with _$OtpResponse {
  const factory OtpResponse({
    required bool success,
    required Data5 data,
  }) = _OtpResponse;
  
  factory OtpResponse.fromJson(Map<String, Object?> json) => _$OtpResponseFromJson(json);
}
