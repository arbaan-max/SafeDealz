// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'overview_attention_kind.dart';

part 'overview_attention.freezed.dart';
part 'overview_attention.g.dart';

@Freezed()
abstract class OverviewAttention with _$OverviewAttention {
  const factory OverviewAttention({
    OverviewAttentionKind? kind,
    String? id,
    String? label,
  }) = _OverviewAttention;
  
  factory OverviewAttention.fromJson(Map<String, Object?> json) => _$OverviewAttentionFromJson(json);
}
