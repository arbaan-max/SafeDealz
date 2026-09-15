// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'redemption.dart';

part 'redemption_list_response.freezed.dart';
part 'redemption_list_response.g.dart';

@Freezed()
abstract class RedemptionListResponse with _$RedemptionListResponse {
  const factory RedemptionListResponse({
    required bool success,
    required List<Redemption> data,
  }) = _RedemptionListResponse;
  
  factory RedemptionListResponse.fromJson(Map<String, Object?> json) => _$RedemptionListResponseFromJson(json);
}
