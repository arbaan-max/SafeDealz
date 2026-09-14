// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'deal.dart';

part 'deal_response.freezed.dart';
part 'deal_response.g.dart';

@Freezed()
class DealResponse with _$DealResponse {
  const factory DealResponse({
    required bool success,
    required Deal data,
  }) = _DealResponse;
  
  factory DealResponse.fromJson(Map<String, Object?> json) => _$DealResponseFromJson(json);
}
