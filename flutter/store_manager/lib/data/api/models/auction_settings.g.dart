// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionSettings _$AuctionSettingsFromJson(Map<String, dynamic> json) =>
    _AuctionSettings(
      biddingMinutes: (json['biddingMinutes'] as num).toInt(),
      acceptanceMinutes: (json['acceptanceMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$AuctionSettingsToJson(_AuctionSettings instance) =>
    <String, dynamic>{
      'biddingMinutes': instance.biddingMinutes,
      'acceptanceMinutes': instance.acceptanceMinutes,
    };
