// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'performance.dart';

part 'performance_response.freezed.dart';
part 'performance_response.g.dart';

@Freezed()
abstract class PerformanceResponse with _$PerformanceResponse {
  const factory PerformanceResponse({
    required bool success,
    required Performance data,
  }) = _PerformanceResponse;
  
  factory PerformanceResponse.fromJson(Map<String, Object?> json) => _$PerformanceResponseFromJson(json);
}
