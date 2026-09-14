// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_tick_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionTickResponseImpl _$$AuctionTickResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionTickResponseImpl(
  success: json['success'] as bool,
  data: Data6.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AuctionTickResponseImplToJson(
  _$AuctionTickResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
