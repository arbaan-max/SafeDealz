// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnostic_import_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiagnosticImportResponseImpl _$$DiagnosticImportResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DiagnosticImportResponseImpl(
  success: json['success'] as bool,
  data: Data10.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DiagnosticImportResponseImplToJson(
  _$DiagnosticImportResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
