// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'report.dart';

part 'report_response.freezed.dart';
part 'report_response.g.dart';

@Freezed()
class ReportResponse with _$ReportResponse {
  const factory ReportResponse({
    required bool success,
    required Report data,
  }) = _ReportResponse;
  
  factory ReportResponse.fromJson(Map<String, Object?> json) => _$ReportResponseFromJson(json);
}
