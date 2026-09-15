// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_export.freezed.dart';
part 'report_export.g.dart';

@Freezed()
abstract class ReportExport with _$ReportExport {
  const factory ReportExport({
    String? filename,
    String? csv,
    DateTime? generatedAt,
  }) = _ReportExport;
  
  factory ReportExport.fromJson(Map<String, Object?> json) => _$ReportExportFromJson(json);
}
