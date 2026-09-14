// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_evidence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogEvidenceImpl _$$CatalogEvidenceImplFromJson(
  Map<String, dynamic> json,
) => _$CatalogEvidenceImpl(
  purpose: json['purpose'] as String,
  label: json['label'] as String,
  billOnly: json['billOnly'] as bool?,
);

Map<String, dynamic> _$$CatalogEvidenceImplToJson(
  _$CatalogEvidenceImpl instance,
) => <String, dynamic>{
  'purpose': instance.purpose,
  'label': instance.label,
  'billOnly': instance.billOnly,
};
