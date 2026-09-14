// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid_write.freezed.dart';
part 'bid_write.g.dart';

@Freezed()
class BidWrite with _$BidWrite {
  const factory BidWrite({
    required int amountPaise,
    required String idempotencyKey,
    int? basePaise,
    int? cosmeticDeductionPaise,
    int? batteryDeductionPaise,
  }) = _BidWrite;
  
  factory BidWrite.fromJson(Map<String, Object?> json) => _$BidWriteFromJson(json);
}
