// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogStepImpl _$$CatalogStepImplFromJson(Map<String, dynamic> json) =>
    _$CatalogStepImpl(
      title: json['title'] as String,
      keys: (json['keys'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CatalogStepImplToJson(_$CatalogStepImpl instance) =>
    <String, dynamic>{'title': instance.title, 'keys': instance.keys};
