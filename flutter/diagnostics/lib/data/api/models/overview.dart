// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'overview_attention.dart';

part 'overview.freezed.dart';
part 'overview.g.dart';

@Freezed()
class Overview with _$Overview {
  const factory Overview({
    int? liveAuctions,
    int? awaitingAcceptance,
    int? paymentExceptions,
    int? completedValuePaise,
    List<OverviewAttention>? needsAttention,
  }) = _Overview;
  
  factory Overview.fromJson(Map<String, Object?> json) => _$OverviewFromJson(json);
}
