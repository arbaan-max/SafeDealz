// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'performance_hour.dart';

part 'performance.freezed.dart';
part 'performance.g.dart';

@Freezed()
class Performance with _$Performance {
  const factory Performance({
    int? bids,
    int? wins,
    int? acceptedPurchases,
    num? winRate,
    num? averageResponseSeconds,
    List<PerformanceHour>? hourly,
  }) = _Performance;
  
  factory Performance.fromJson(Map<String, Object?> json) => _$PerformanceFromJson(json);
}
