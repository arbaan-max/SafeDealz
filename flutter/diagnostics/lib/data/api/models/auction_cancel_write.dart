// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_cancel_write.freezed.dart';
part 'auction_cancel_write.g.dart';

@Freezed()
class AuctionCancelWrite with _$AuctionCancelWrite {
  const factory AuctionCancelWrite({
    required String reason,
  }) = _AuctionCancelWrite;
  
  factory AuctionCancelWrite.fromJson(Map<String, Object?> json) => _$AuctionCancelWriteFromJson(json);
}
