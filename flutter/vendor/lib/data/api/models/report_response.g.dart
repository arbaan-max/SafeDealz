// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) =>
    _ReportResponse(
      success: json['success'] as bool,
      data: Report.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReportResponseToJson(_ReportResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
