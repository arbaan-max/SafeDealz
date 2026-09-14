// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance_hour.freezed.dart';
part 'performance_hour.g.dart';

@Freezed()
class PerformanceHour with _$PerformanceHour {
  const factory PerformanceHour({
    int? hour,
    int? bids,
  }) = _PerformanceHour;
  
  factory PerformanceHour.fromJson(Map<String, Object?> json) => _$PerformanceHourFromJson(json);
}
