// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_rebid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionRebidResponse _$AuctionRebidResponseFromJson(
  Map<String, dynamic> json,
) => _AuctionRebidResponse(
  success: json['success'] as bool,
  data: Data3.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuctionRebidResponseToJson(
  _AuctionRebidResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
