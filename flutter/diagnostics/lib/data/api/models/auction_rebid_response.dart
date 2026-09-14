// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data3.dart';

part 'auction_rebid_response.freezed.dart';
part 'auction_rebid_response.g.dart';

@Freezed()
class AuctionRebidResponse with _$AuctionRebidResponse {
  const factory AuctionRebidResponse({
    required bool success,
    required Data3 data,
  }) = _AuctionRebidResponse;
  
  factory AuctionRebidResponse.fromJson(Map<String, Object?> json) => _$AuctionRebidResponseFromJson(json);
}
