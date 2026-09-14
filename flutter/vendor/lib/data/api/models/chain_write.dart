// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_write.freezed.dart';
part 'chain_write.g.dart';

@Freezed()
class ChainWrite with _$ChainWrite {
  const factory ChainWrite({
    String? name,
    String? code,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    bool? active,
  }) = _ChainWrite;
  
  factory ChainWrite.fromJson(Map<String, Object?> json) => _$ChainWriteFromJson(json);
}
