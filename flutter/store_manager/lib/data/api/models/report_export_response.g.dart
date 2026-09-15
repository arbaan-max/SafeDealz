// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_export_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportExportResponse _$ReportExportResponseFromJson(
  Map<String, dynamic> json,
) => _ReportExportResponse(
  success: json['success'] as bool,
  data: ReportExport.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReportExportResponseToJson(
  _ReportExportResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
