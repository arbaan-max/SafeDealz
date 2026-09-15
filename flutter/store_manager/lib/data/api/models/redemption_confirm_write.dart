// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'redemption_confirm_write.freezed.dart';
part 'redemption_confirm_write.g.dart';

@Freezed()
abstract class RedemptionConfirmWrite with _$RedemptionConfirmWrite {
  const factory RedemptionConfirmWrite({
    required String otp,
  }) = _RedemptionConfirmWrite;
  
  factory RedemptionConfirmWrite.fromJson(Map<String, Object?> json) => _$RedemptionConfirmWriteFromJson(json);
}
