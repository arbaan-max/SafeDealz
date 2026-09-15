// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'redemption_write.freezed.dart';
part 'redemption_write.g.dart';

@Freezed()
abstract class RedemptionWrite with _$RedemptionWrite {
  const factory RedemptionWrite({
    required String customerPhone,
    required String invoiceNumber,
    required String category,
    required int billAmountPaise,
    required int discountPaise,
    String? branchId,
  }) = _RedemptionWrite;
  
  factory RedemptionWrite.fromJson(Map<String, Object?> json) => _$RedemptionWriteFromJson(json);
}
