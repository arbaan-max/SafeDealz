// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnostic_import_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosticImportResponse _$DiagnosticImportResponseFromJson(
  Map<String, dynamic> json,
) => _DiagnosticImportResponse(
  success: json['success'] as bool,
  data: Data10.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DiagnosticImportResponseToJson(
  _DiagnosticImportResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
