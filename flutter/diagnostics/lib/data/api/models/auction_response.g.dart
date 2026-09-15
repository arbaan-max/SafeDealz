// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionResponse _$AuctionResponseFromJson(Map<String, dynamic> json) =>
    _AuctionResponse(
      success: json['success'] as bool,
      data: AuctionRound.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuctionResponseToJson(_AuctionResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
