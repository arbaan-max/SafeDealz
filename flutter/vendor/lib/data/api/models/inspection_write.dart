// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspection_write.freezed.dart';
part 'inspection_write.g.dart';

@Freezed()
class InspectionWrite with _$InspectionWrite {
  const factory InspectionWrite({
    Map<String, String>? answers,
    bool? complete,
  }) = _InspectionWrite;
  
  factory InspectionWrite.fromJson(Map<String, Object?> json) => _$InspectionWriteFromJson(json);
}
