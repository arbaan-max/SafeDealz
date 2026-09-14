// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data6.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data6Impl _$$Data6ImplFromJson(Map<String, dynamic> json) => _$Data6Impl(
  closedCount: (json['closedCount'] as num?)?.toInt(),
  closed: (json['closed'] as List<dynamic>?)
      ?.map((e) => AuctionRound.fromJson(e as Map<String, dynamic>))
      .toList(),
  expiredCount: (json['expiredCount'] as num?)?.toInt(),
  expired: (json['expired'] as List<dynamic>?)
      ?.map((e) => AuctionRound.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$Data6ImplToJson(_$Data6Impl instance) =>
    <String, dynamic>{
      'closedCount': instance.closedCount,
      'closed': instance.closed,
      'expiredCount': instance.expiredCount,
      'expired': instance.expired,
    };
