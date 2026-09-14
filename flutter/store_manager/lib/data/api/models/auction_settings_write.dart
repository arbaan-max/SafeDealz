// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_settings_write.freezed.dart';
part 'auction_settings_write.g.dart';

@Freezed()
class AuctionSettingsWrite with _$AuctionSettingsWrite {
  const factory AuctionSettingsWrite({
    required int biddingMinutes,
    required int acceptanceMinutes,
  }) = _AuctionSettingsWrite;
  
  factory AuctionSettingsWrite.fromJson(Map<String, Object?> json) => _$AuctionSettingsWriteFromJson(json);
}
