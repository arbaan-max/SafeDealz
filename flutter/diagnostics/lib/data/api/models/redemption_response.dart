// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'redemption.dart';

part 'redemption_response.freezed.dart';
part 'redemption_response.g.dart';

@Freezed()
class RedemptionResponse with _$RedemptionResponse {
  const factory RedemptionResponse({
    required bool success,
    required Redemption data,
  }) = _RedemptionResponse;
  
  factory RedemptionResponse.fromJson(Map<String, Object?> json) => _$RedemptionResponseFromJson(json);
}
