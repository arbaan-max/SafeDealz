// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bid.dart';

part 'bid_list_response.freezed.dart';
part 'bid_list_response.g.dart';

@Freezed()
abstract class BidListResponse with _$BidListResponse {
  const factory BidListResponse({
    required bool success,
    required List<Bid> data,
  }) = _BidListResponse;
  
  factory BidListResponse.fromJson(Map<String, Object?> json) => _$BidListResponseFromJson(json);
}
