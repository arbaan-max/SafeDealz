// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_summary.dart';

part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

@Freezed()
class AuthData with _$AuthData {
  const factory AuthData({
    required String accessToken,
    required int expiresIn,
    required AccountSummary account,
    String? refreshToken,
    String? csrfToken,
  }) = _AuthData;
  
  factory AuthData.fromJson(Map<String, Object?> json) => _$AuthDataFromJson(json);
}
