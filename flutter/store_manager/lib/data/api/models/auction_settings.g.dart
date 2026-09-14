// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionSettingsImpl _$$AuctionSettingsImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionSettingsImpl(
  biddingMinutes: (json['biddingMinutes'] as num).toInt(),
  acceptanceMinutes: (json['acceptanceMinutes'] as num).toInt(),
);

Map<String, dynamic> _$$AuctionSettingsImplToJson(
  _$AuctionSettingsImpl instance,
) => <String, dynamic>{
  'biddingMinutes': instance.biddingMinutes,
  'acceptanceMinutes': instance.acceptanceMinutes,
};
