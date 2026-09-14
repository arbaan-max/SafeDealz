// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'deal.dart';

part 'deal_list_response.freezed.dart';
part 'deal_list_response.g.dart';

@Freezed()
class DealListResponse with _$DealListResponse {
  const factory DealListResponse({
    required bool success,
    required List<Deal> data,
  }) = _DealListResponse;
  
  factory DealListResponse.fromJson(Map<String, Object?> json) => _$DealListResponseFromJson(json);
}
