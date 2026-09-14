// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidListResponseImpl _$$BidListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BidListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Bid.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$BidListResponseImplToJson(
  _$BidListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
