// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'catalog_diagnostic_check.dart';
import 'catalog_evidence.dart';
import 'catalog_field.dart';
import 'catalog_step.dart';

part 'catalog.freezed.dart';
part 'catalog.g.dart';

@Freezed()
abstract class Catalog with _$Catalog {
  const factory Catalog({
    required String version,
    required List<String> storages,
    required List<String> rams,
    required List<String> platforms,
    required String billAgeExemptOption,
    required List<CatalogField> inspectionFields,
    required List<CatalogStep> inspectionSteps,
    required List<CatalogEvidence> evidence,
    required List<CatalogDiagnosticCheck> diagnosticChecks,
  }) = _Catalog;
  
  factory Catalog.fromJson(Map<String, Object?> json) => _$CatalogFromJson(json);
}
