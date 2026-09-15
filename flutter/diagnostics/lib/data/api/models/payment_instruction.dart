// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_attempt.dart';
import 'payment_instruction_status.dart';

part 'payment_instruction.freezed.dart';
part 'payment_instruction.g.dart';

@Freezed()
abstract class PaymentInstruction with _$PaymentInstruction {
  const factory PaymentInstruction({
    String? id,
    String? dealId,
    String? branchId,
    PaymentInstructionStatus? status,
    int? amountPaise,
    int? feePaise,
    String? beneficiaryName,
    String? accountNumberMasked,
    String? ifsc,
    String? providerTransferId,
    String? providerStatus,
    List<PaymentAttempt>? attempts,
  }) = _PaymentInstruction;
  
  factory PaymentInstruction.fromJson(Map<String, Object?> json) => _$PaymentInstructionFromJson(json);
}
