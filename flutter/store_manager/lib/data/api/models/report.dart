// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_conversion.dart';
import 'billing_reconciliation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@Freezed()
abstract class Report with _$Report {
  const factory Report({
    AuctionConversion? auctionConversion,
    int? acceptedValuePaise,
    int? paidValuePaise,
    int? pickupCount,
    int? walletMovementsPaise,
    int? rewardIssuedPoints,
    int? rewardRedeemedPoints,
    BillingReconciliation? billingReconciliation,
  }) = _Report;
  
  factory Report.fromJson(Map<String, Object?> json) => _$ReportFromJson(json);
}
