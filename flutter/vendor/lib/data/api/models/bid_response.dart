// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bid.dart';

part 'bid_response.freezed.dart';
part 'bid_response.g.dart';

@Freezed()
class BidResponse with _$BidResponse {
  const factory BidResponse({
    required bool success,
    required Bid data,
  }) = _BidResponse;
  
  factory BidResponse.fromJson(Map<String, Object?> json) => _$BidResponseFromJson(json);
}
