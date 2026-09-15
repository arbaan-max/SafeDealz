// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BidListResponse _$BidListResponseFromJson(Map<String, dynamic> json) =>
    _BidListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Bid.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BidListResponseToJson(_BidListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
