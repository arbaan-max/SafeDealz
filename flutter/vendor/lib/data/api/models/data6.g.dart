// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data6.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data6 _$Data6FromJson(Map<String, dynamic> json) => _Data6(
  closedCount: (json['closedCount'] as num?)?.toInt(),
  closed: (json['closed'] as List<dynamic>?)
      ?.map((e) => AuctionRound.fromJson(e as Map<String, dynamic>))
      .toList(),
  expiredCount: (json['expiredCount'] as num?)?.toInt(),
  expired: (json['expired'] as List<dynamic>?)
      ?.map((e) => AuctionRound.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$Data6ToJson(_Data6 instance) => <String, dynamic>{
  'closedCount': instance.closedCount,
  'closed': instance.closed,
  'expiredCount': instance.expiredCount,
  'expired': instance.expired,
};
