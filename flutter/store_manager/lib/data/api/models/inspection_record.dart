// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspection_record.freezed.dart';
part 'inspection_record.g.dart';

@Freezed()
abstract class InspectionRecord with _$InspectionRecord {
  const factory InspectionRecord({
    Map<String, String>? answers,
    String? source,
    bool? complete,
    bool? billRequired,
  }) = _InspectionRecord;
  
  factory InspectionRecord.fromJson(Map<String, Object?> json) => _$InspectionRecordFromJson(json);
}
