// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_settings_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionSettingsWriteImpl _$$AuctionSettingsWriteImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionSettingsWriteImpl(
  biddingMinutes: (json['biddingMinutes'] as num).toInt(),
  acceptanceMinutes: (json['acceptanceMinutes'] as num).toInt(),
);

Map<String, dynamic> _$$AuctionSettingsWriteImplToJson(
  _$AuctionSettingsWriteImpl instance,
) => <String, dynamic>{
  'biddingMinutes': instance.biddingMinutes,
  'acceptanceMinutes': instance.acceptanceMinutes,
};
