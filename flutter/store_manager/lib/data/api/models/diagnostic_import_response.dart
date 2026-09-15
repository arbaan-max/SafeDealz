// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data10.dart';

part 'diagnostic_import_response.freezed.dart';
part 'diagnostic_import_response.g.dart';

@Freezed()
abstract class DiagnosticImportResponse with _$DiagnosticImportResponse {
  const factory DiagnosticImportResponse({
    required bool success,
    required Data10 data,
  }) = _DiagnosticImportResponse;
  
  factory DiagnosticImportResponse.fromJson(Map<String, Object?> json) => _$DiagnosticImportResponseFromJson(json);
}
