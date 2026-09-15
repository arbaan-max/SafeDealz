// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_diagnostic_check.freezed.dart';
part 'catalog_diagnostic_check.g.dart';

@Freezed()
abstract class CatalogDiagnosticCheck with _$CatalogDiagnosticCheck {
  const factory CatalogDiagnosticCheck({
    required String id,
    required String label,
    required String group,
  }) = _CatalogDiagnosticCheck;
  
  factory CatalogDiagnosticCheck.fromJson(Map<String, Object?> json) => _$CatalogDiagnosticCheckFromJson(json);
}
