// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_decline_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionDeclineWrite _$AuctionDeclineWriteFromJson(Map<String, dynamic> json) =>
    _AuctionDeclineWrite(
      reasonCode: AuctionDeclineWriteReasonCode.fromJson(
        json['reasonCode'] as String,
      ),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$AuctionDeclineWriteToJson(
  _AuctionDeclineWrite instance,
) => <String, dynamic>{
  'reasonCode': instance.reasonCode,
  'reason': instance.reason,
};
