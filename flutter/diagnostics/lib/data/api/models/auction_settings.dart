// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_settings.freezed.dart';
part 'auction_settings.g.dart';

@Freezed()
abstract class AuctionSettings with _$AuctionSettings {
  const factory AuctionSettings({
    required int biddingMinutes,
    required int acceptanceMinutes,
  }) = _AuctionSettings;
  
  factory AuctionSettings.fromJson(Map<String, Object?> json) => _$AuctionSettingsFromJson(json);
}
