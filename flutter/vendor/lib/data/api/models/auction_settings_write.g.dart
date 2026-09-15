// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_settings_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionSettingsWrite _$AuctionSettingsWriteFromJson(
  Map<String, dynamic> json,
) => _AuctionSettingsWrite(
  biddingMinutes: (json['biddingMinutes'] as num).toInt(),
  acceptanceMinutes: (json['acceptanceMinutes'] as num).toInt(),
);

Map<String, dynamic> _$AuctionSettingsWriteToJson(
  _AuctionSettingsWrite instance,
) => <String, dynamic>{
  'biddingMinutes': instance.biddingMinutes,
  'acceptanceMinutes': instance.acceptanceMinutes,
};
