// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain.freezed.dart';
part 'chain.g.dart';

@Freezed()
abstract class Chain with _$Chain {
  const factory Chain({
    required String id,
    required String name,
    required String code,
    required bool active,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    int? branchCount,
  }) = _Chain;
  
  factory Chain.fromJson(Map<String, Object?> json) => _$ChainFromJson(json);
}
