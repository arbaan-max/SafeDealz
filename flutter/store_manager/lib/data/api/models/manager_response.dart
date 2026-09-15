// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'manager_account.dart';

part 'manager_response.freezed.dart';
part 'manager_response.g.dart';

@Freezed()
abstract class ManagerResponse with _$ManagerResponse {
  const factory ManagerResponse({
    required bool success,
    required ManagerAccount data,
  }) = _ManagerResponse;
  
  factory ManagerResponse.fromJson(Map<String, Object?> json) => _$ManagerResponseFromJson(json);
}
