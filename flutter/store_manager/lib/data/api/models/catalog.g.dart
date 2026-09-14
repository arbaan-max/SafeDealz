// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogImpl _$$CatalogImplFromJson(Map<String, dynamic> json) =>
    _$CatalogImpl(
      version: json['version'] as String,
      storages: (json['storages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rams: (json['rams'] as List<dynamic>).map((e) => e as String).toList(),
      platforms: (json['platforms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      billAgeExemptOption: json['billAgeExemptOption'] as String,
      inspectionFields: (json['inspectionFields'] as List<dynamic>)
          .map((e) => CatalogField.fromJson(e as Map<String, dynamic>))
          .toList(),
      inspectionSteps: (json['inspectionSteps'] as List<dynamic>)
          .map((e) => CatalogStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      evidence: (json['evidence'] as List<dynamic>)
          .map((e) => CatalogEvidence.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosticChecks: (json['diagnosticChecks'] as List<dynamic>)
          .map(
            (e) => CatalogDiagnosticCheck.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$$CatalogImplToJson(_$CatalogImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'storages': instance.storages,
      'rams': instance.rams,
      'platforms': instance.platforms,
      'billAgeExemptOption': instance.billAgeExemptOption,
      'inspectionFields': instance.inspectionFields,
      'inspectionSteps': instance.inspectionSteps,
      'evidence': instance.evidence,
      'diagnosticChecks': instance.diagnosticChecks,
    };
