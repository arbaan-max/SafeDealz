// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogFieldImpl _$$CatalogFieldImplFromJson(Map<String, dynamic> json) =>
    _$CatalogFieldImpl(
      key: json['key'] as String,
      label: json['label'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      appleOnly: json['appleOnly'] as bool?,
    );

Map<String, dynamic> _$$CatalogFieldImplToJson(_$CatalogFieldImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'options': instance.options,
      'appleOnly': instance.appleOnly,
    };
