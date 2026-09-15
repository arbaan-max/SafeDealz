// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_reconciliation.freezed.dart';
part 'billing_reconciliation.g.dart';

@Freezed()
abstract class BillingReconciliation with _$BillingReconciliation {
  const factory BillingReconciliation({
    int? paidValuePaise,
    int? rewardOutstandingValuePaise,
  }) = _BillingReconciliation;
  
  factory BillingReconciliation.fromJson(Map<String, Object?> json) => _$BillingReconciliationFromJson(json);
}
