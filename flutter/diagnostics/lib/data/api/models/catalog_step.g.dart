// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogStep _$CatalogStepFromJson(Map<String, dynamic> json) => _CatalogStep(
  title: json['title'] as String,
  keys: (json['keys'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$CatalogStepToJson(_CatalogStep instance) =>
    <String, dynamic>{'title': instance.title, 'keys': instance.keys};
