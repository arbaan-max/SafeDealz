// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_export_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportExportResponseImpl _$$ReportExportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReportExportResponseImpl(
  success: json['success'] as bool,
  data: ReportExport.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ReportExportResponseImplToJson(
  _$ReportExportResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
