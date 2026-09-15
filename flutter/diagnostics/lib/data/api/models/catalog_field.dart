// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_field.freezed.dart';
part 'catalog_field.g.dart';

@Freezed()
abstract class CatalogField with _$CatalogField {
  const factory CatalogField({
    required String key,
    required String label,
    required List<String> options,
    bool? appleOnly,
  }) = _CatalogField;
  
  factory CatalogField.fromJson(Map<String, Object?> json) => _$CatalogFieldFromJson(json);
}
