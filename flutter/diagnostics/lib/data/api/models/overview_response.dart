// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'overview.dart';

part 'overview_response.freezed.dart';
part 'overview_response.g.dart';

@Freezed()
abstract class OverviewResponse with _$OverviewResponse {
  const factory OverviewResponse({
    required bool success,
    required Overview data,
  }) = _OverviewResponse;
  
  factory OverviewResponse.fromJson(Map<String, Object?> json) => _$OverviewResponseFromJson(json);
}
