// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionListResponse _$AuctionListResponseFromJson(Map<String, dynamic> json) =>
    _AuctionListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => AuctionRound.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuctionListResponseToJson(
  _AuctionListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
