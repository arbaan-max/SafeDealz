// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'client_type.dart';
import 'login_audience.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@Freezed()
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
    required LoginAudience expectedRole,
    required ClientType clientType,
  }) = _LoginRequest;
  
  factory LoginRequest.fromJson(Map<String, Object?> json) => _$LoginRequestFromJson(json);
}
