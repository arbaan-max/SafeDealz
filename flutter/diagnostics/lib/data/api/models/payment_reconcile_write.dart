// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_reconcile_write_outcome.dart';

part 'payment_reconcile_write.freezed.dart';
part 'payment_reconcile_write.g.dart';

@Freezed()
class PaymentReconcileWrite with _$PaymentReconcileWrite {
  const factory PaymentReconcileWrite({
    required PaymentReconcileWriteOutcome outcome,
  }) = _PaymentReconcileWrite;
  
  factory PaymentReconcileWrite.fromJson(Map<String, Object?> json) => _$PaymentReconcileWriteFromJson(json);
}
