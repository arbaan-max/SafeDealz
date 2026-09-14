// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_attempt.freezed.dart';
part 'payment_attempt.g.dart';

@Freezed()
class PaymentAttempt with _$PaymentAttempt {
  const factory PaymentAttempt({
    DateTime? at,
    String? event,
    String? status,
    String? note,
  }) = _PaymentAttempt;
  
  factory PaymentAttempt.fromJson(Map<String, Object?> json) => _$PaymentAttemptFromJson(json);
}
