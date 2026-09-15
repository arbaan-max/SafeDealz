// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_evidence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogEvidence _$CatalogEvidenceFromJson(Map<String, dynamic> json) =>
    _CatalogEvidence(
      purpose: json['purpose'] as String,
      label: json['label'] as String,
      billOnly: json['billOnly'] as bool?,
    );

Map<String, dynamic> _$CatalogEvidenceToJson(_CatalogEvidence instance) =>
    <String, dynamic>{
      'purpose': instance.purpose,
      'label': instance.label,
      'billOnly': instance.billOnly,
    };
