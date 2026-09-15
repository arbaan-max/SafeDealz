// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_instruction.dart';

part 'payment_response.freezed.dart';
part 'payment_response.g.dart';

@Freezed()
abstract class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    required bool success,
    required PaymentInstruction data,
  }) = _PaymentResponse;
  
  factory PaymentResponse.fromJson(Map<String, Object?> json) => _$PaymentResponseFromJson(json);
}
