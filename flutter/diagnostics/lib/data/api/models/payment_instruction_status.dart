// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum PaymentInstructionStatus {
  @JsonValue('awaiting_customer_verification')
  awaitingCustomerVerification('awaiting_customer_verification'),
  @JsonValue('ready_for_transfer')
  readyForTransfer('ready_for_transfer'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('paid')
  paid('paid'),
  @JsonValue('needs_attention')
  needsAttention('needs_attention'),
  @JsonValue('unknown')
  unknown('unknown'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PaymentInstructionStatus(this.json);

  factory PaymentInstructionStatus.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
  String toJson() {
    final value = json;
    if (value == null) {
      throw StateError('Cannot convert enum value with null JSON representation to String. '
          'This usually happens for \$unknown or @JsonValue(null) entries.');
    }
    return value as String;
  }

  @override
  String toString() => json?.toString() ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<PaymentInstructionStatus> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
