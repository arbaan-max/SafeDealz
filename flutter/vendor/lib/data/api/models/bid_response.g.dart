// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BidResponse _$BidResponseFromJson(Map<String, dynamic> json) => _BidResponse(
  success: json['success'] as bool,
  data: Bid.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BidResponseToJson(_BidResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
