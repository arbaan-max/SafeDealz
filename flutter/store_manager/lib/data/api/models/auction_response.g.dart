// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionResponseImpl _$$AuctionResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionResponseImpl(
  success: json['success'] as bool,
  data: AuctionRound.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AuctionResponseImplToJson(
  _$AuctionResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
