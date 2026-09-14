// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_round.dart';

part 'auction_response.freezed.dart';
part 'auction_response.g.dart';

@Freezed()
class AuctionResponse with _$AuctionResponse {
  const factory AuctionResponse({
    required bool success,
    required AuctionRound data,
  }) = _AuctionResponse;
  
  factory AuctionResponse.fromJson(Map<String, Object?> json) => _$AuctionResponseFromJson(json);
}
