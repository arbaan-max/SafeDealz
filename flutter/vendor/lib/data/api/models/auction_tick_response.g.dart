// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_tick_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionTickResponse _$AuctionTickResponseFromJson(Map<String, dynamic> json) =>
    _AuctionTickResponse(
      success: json['success'] as bool,
      data: Data6.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuctionTickResponseToJson(
  _AuctionTickResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
