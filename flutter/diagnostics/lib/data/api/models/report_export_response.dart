// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'report_export.dart';

part 'report_export_response.freezed.dart';
part 'report_export_response.g.dart';

@Freezed()
abstract class ReportExportResponse with _$ReportExportResponse {
  const factory ReportExportResponse({
    required bool success,
    required ReportExport data,
  }) = _ReportExportResponse;
  
  factory ReportExportResponse.fromJson(Map<String, Object?> json) => _$ReportExportResponseFromJson(json);
}
