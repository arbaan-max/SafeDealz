// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_round.dart';

part 'auction_list_response.freezed.dart';
part 'auction_list_response.g.dart';

@Freezed()
class AuctionListResponse with _$AuctionListResponse {
  const factory AuctionListResponse({
    required bool success,
    required List<AuctionRound> data,
  }) = _AuctionListResponse;
  
  factory AuctionListResponse.fromJson(Map<String, Object?> json) => _$AuctionListResponseFromJson(json);
}
