// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_rebid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionRebidResponseImpl _$$AuctionRebidResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionRebidResponseImpl(
  success: json['success'] as bool,
  data: Data3.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AuctionRebidResponseImplToJson(
  _$AuctionRebidResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
