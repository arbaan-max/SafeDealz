// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnostic_import_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosticImportWrite _$DiagnosticImportWriteFromJson(
  Map<String, dynamic> json,
) => _DiagnosticImportWrite(
  deviceId: json['deviceId'] as String,
  payload: json['payload'],
  signature: json['signature'] as String,
);

Map<String, dynamic> _$DiagnosticImportWriteToJson(
  _DiagnosticImportWrite instance,
) => <String, dynamic>{
  'deviceId': instance.deviceId,
  'payload': instance.payload,
  'signature': instance.signature,
};
