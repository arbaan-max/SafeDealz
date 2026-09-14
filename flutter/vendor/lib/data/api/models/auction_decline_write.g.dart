// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_decline_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionDeclineWriteImpl _$$AuctionDeclineWriteImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionDeclineWriteImpl(
  reasonCode: AuctionDeclineWriteReasonCode.fromJson(
    json['reasonCode'] as String,
  ),
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$$AuctionDeclineWriteImplToJson(
  _$AuctionDeclineWriteImpl instance,
) => <String, dynamic>{
  'reasonCode': instance.reasonCode,
  'reason': instance.reason,
};
