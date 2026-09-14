// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidResponseImpl _$$BidResponseImplFromJson(Map<String, dynamic> json) =>
    _$BidResponseImpl(
      success: json['success'] as bool,
      data: Bid.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BidResponseImplToJson(_$BidResponseImpl instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
