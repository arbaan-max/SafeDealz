// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'redemption_status.dart';

part 'redemption.freezed.dart';
part 'redemption.g.dart';

@Freezed()
class Redemption with _$Redemption {
  const factory Redemption({
    String? id,
    String? customerPhone,
    String? customerPhoneMasked,
    String? customerName,
    String? branchId,
    String? invoiceNumber,
    String? category,
    int? billAmountPaise,
    int? discountPaise,
    int? points,
    int? remainingPoints,
    int? remainingValuePaise,
    RedemptionStatus? status,
    bool? duplicateInvoice,
    bool? otpRequired,
    DateTime? redeemedAt,
    String? reminder,
  }) = _Redemption;
  
  factory Redemption.fromJson(Map<String, Object?> json) => _$RedemptionFromJson(json);
}
