// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnostic_import_write.freezed.dart';
part 'diagnostic_import_write.g.dart';

@Freezed()
abstract class DiagnosticImportWrite with _$DiagnosticImportWrite {
  const factory DiagnosticImportWrite({
    required String deviceId,
    required dynamic payload,
    required String signature,
  }) = _DiagnosticImportWrite;
  
  factory DiagnosticImportWrite.fromJson(Map<String, Object?> json) => _$DiagnosticImportWriteFromJson(json);
}
