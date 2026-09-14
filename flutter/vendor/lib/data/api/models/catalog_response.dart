// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'catalog.dart';

part 'catalog_response.freezed.dart';
part 'catalog_response.g.dart';

@Freezed()
class CatalogResponse with _$CatalogResponse {
  const factory CatalogResponse({
    required bool success,
    required Catalog data,
  }) = _CatalogResponse;
  
  factory CatalogResponse.fromJson(Map<String, Object?> json) => _$CatalogResponseFromJson(json);
}
