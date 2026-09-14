// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_summary.dart';

part 'account_response.freezed.dart';
part 'account_response.g.dart';

@Freezed()
class AccountResponse with _$AccountResponse {
  const factory AccountResponse({
    required bool success,
    required AccountSummary data,
  }) = _AccountResponse;
  
  factory AccountResponse.fromJson(Map<String, Object?> json) => _$AccountResponseFromJson(json);
}
