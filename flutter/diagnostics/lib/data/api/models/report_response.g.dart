// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportResponseImpl _$$ReportResponseImplFromJson(Map<String, dynamic> json) =>
    _$ReportResponseImpl(
      success: json['success'] as bool,
      data: Report.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReportResponseImplToJson(
  _$ReportResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
