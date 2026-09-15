// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_step.freezed.dart';
part 'catalog_step.g.dart';

@Freezed()
abstract class CatalogStep with _$CatalogStep {
  const factory CatalogStep({
    required String title,
    required List<String> keys,
  }) = _CatalogStep;
  
  factory CatalogStep.fromJson(Map<String, Object?> json) => _$CatalogStepFromJson(json);
}
