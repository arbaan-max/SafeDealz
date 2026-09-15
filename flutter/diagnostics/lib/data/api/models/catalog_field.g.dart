// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogField _$CatalogFieldFromJson(Map<String, dynamic> json) =>
    _CatalogField(
      key: json['key'] as String,
      label: json['label'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      appleOnly: json['appleOnly'] as bool?,
    );

Map<String, dynamic> _$CatalogFieldToJson(_CatalogField instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'options': instance.options,
      'appleOnly': instance.appleOnly,
    };
