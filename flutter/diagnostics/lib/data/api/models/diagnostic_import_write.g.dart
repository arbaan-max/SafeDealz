// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnostic_import_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiagnosticImportWriteImpl _$$DiagnosticImportWriteImplFromJson(
  Map<String, dynamic> json,
) => _$DiagnosticImportWriteImpl(
  deviceId: json['deviceId'] as String,
  payload: json['payload'],
  signature: json['signature'] as String,
);

Map<String, dynamic> _$$DiagnosticImportWriteImplToJson(
  _$DiagnosticImportWriteImpl instance,
) => <String, dynamic>{
  'deviceId': instance.deviceId,
  'payload': instance.payload,
  'signature': instance.signature,
};
