// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data6.dart';

part 'auction_tick_response.freezed.dart';
part 'auction_tick_response.g.dart';

@Freezed()
class AuctionTickResponse with _$AuctionTickResponse {
  const factory AuctionTickResponse({
    required bool success,
    required Data6 data,
  }) = _AuctionTickResponse;
  
  factory AuctionTickResponse.fromJson(Map<String, Object?> json) => _$AuctionTickResponseFromJson(json);
}
