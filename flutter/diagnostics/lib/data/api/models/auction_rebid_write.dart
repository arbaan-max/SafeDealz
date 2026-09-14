// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_rebid_write.freezed.dart';
part 'auction_rebid_write.g.dart';

@Freezed()
class AuctionRebidWrite with _$AuctionRebidWrite {
  const factory AuctionRebidWrite({
    required int expectedAmountPaise,
  }) = _AuctionRebidWrite;
  
  factory AuctionRebidWrite.fromJson(Map<String, Object?> json) => _$AuctionRebidWriteFromJson(json);
}
