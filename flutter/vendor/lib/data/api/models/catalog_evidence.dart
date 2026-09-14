// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_evidence.freezed.dart';
part 'catalog_evidence.g.dart';

@Freezed()
class CatalogEvidence with _$CatalogEvidence {
  const factory CatalogEvidence({
    required String purpose,
    required String label,
    bool? billOnly,
  }) = _CatalogEvidence;
  
  factory CatalogEvidence.fromJson(Map<String, Object?> json) => _$CatalogEvidenceFromJson(json);
}
