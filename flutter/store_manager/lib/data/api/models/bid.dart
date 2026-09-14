// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bid_status.dart';

part 'bid.freezed.dart';
part 'bid.g.dart';

@Freezed()
class Bid with _$Bid {
  const factory Bid({
    required String id,
    required String roundId,
    required String deviceId,
    required String vendorAccountId,
    required int amountPaise,
    required int feePaise,
    required int totalPaise,
    required BidStatus status,
    num? feeRate,
    int? basePaise,
    int? cosmeticDeductionPaise,
    int? batteryDeductionPaise,
    DateTime? createdAt,
  }) = _Bid;
  
  factory Bid.fromJson(Map<String, Object?> json) => _$BidFromJson(json);
}
