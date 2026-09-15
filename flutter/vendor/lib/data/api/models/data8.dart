// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data8.freezed.dart';
part 'data8.g.dart';

@Freezed()
abstract class Data8 with _$Data8 {
  const factory Data8({
    String? id,
    String? purpose,
    String? objectKey,
    String? status,
  }) = _Data8;
  
  factory Data8.fromJson(Map<String, Object?> json) => _$Data8FromJson(json);
}
