// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'deal_status.dart';
import 'payment_instruction.dart';
import 'purchased_device.dart';

part 'deal.freezed.dart';
part 'deal.g.dart';

@Freezed()
class Deal with _$Deal {
  const factory Deal({
    required String id,
    required String auctionRoundId,
    required String deviceId,
    required int amountPaise,
    required DealStatus status,
    String? branchId,
    String? vendorAccountId,
    String? bidId,
    int? feePaise,
    int? totalPaise,
    PaymentInstruction? paymentInstruction,
    DateTime? pickedUpAt,
    dynamic branch,
    String? customerName,
    String? customerPhone,
    bool? otpVerified,
    bool? idCaptured,
    bool? portraitCaptured,
    PurchasedDevice? purchasedDevice,
  }) = _Deal;
  
  factory Deal.fromJson(Map<String, Object?> json) => _$DealFromJson(json);
}
