// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_decline_write_reason_code.dart';

part 'auction_decline_write.freezed.dart';
part 'auction_decline_write.g.dart';

@Freezed()
class AuctionDeclineWrite with _$AuctionDeclineWrite {
  const factory AuctionDeclineWrite({
    required AuctionDeclineWriteReasonCode reasonCode,
    String? reason,
  }) = _AuctionDeclineWrite;
  
  factory AuctionDeclineWrite.fromJson(Map<String, Object?> json) => _$AuctionDeclineWriteFromJson(json);
}
