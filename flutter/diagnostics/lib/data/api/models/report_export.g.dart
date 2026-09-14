// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_export.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportExportImpl _$$ReportExportImplFromJson(Map<String, dynamic> json) =>
    _$ReportExportImpl(
      filename: json['filename'] as String?,
      csv: json['csv'] as String?,
      generatedAt: json['generatedAt'] == null
          ? null
          : DateTime.parse(json['generatedAt'] as String),
    );

Map<String, dynamic> _$$ReportExportImplToJson(_$ReportExportImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'csv': instance.csv,
      'generatedAt': instance.generatedAt?.toIso8601String(),
    };
