// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_data.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@Freezed()
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required bool success,
    required AuthData data,
  }) = _AuthResponse;
  
  factory AuthResponse.fromJson(Map<String, Object?> json) => _$AuthResponseFromJson(json);
}
