// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'admin_account.dart';

part 'admin_response.freezed.dart';
part 'admin_response.g.dart';

@Freezed()
class AdminResponse with _$AdminResponse {
  const factory AdminResponse({
    required bool success,
    required AdminAccount data,
  }) = _AdminResponse;
  
  factory AdminResponse.fromJson(Map<String, Object?> json) => _$AdminResponseFromJson(json);
}
