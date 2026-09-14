// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_settings.dart';

part 'auction_settings_response.freezed.dart';
part 'auction_settings_response.g.dart';

@Freezed()
class AuctionSettingsResponse with _$AuctionSettingsResponse {
  const factory AuctionSettingsResponse({
    required bool success,
    required AuctionSettings data,
  }) = _AuctionSettingsResponse;
  
  factory AuctionSettingsResponse.fromJson(Map<String, Object?> json) => _$AuctionSettingsResponseFromJson(json);
}
