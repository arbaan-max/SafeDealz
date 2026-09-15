// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Performance _$PerformanceFromJson(Map<String, dynamic> json) => _Performance(
  bids: (json['bids'] as num?)?.toInt(),
  wins: (json['wins'] as num?)?.toInt(),
  acceptedPurchases: (json['acceptedPurchases'] as num?)?.toInt(),
  winRate: json['winRate'] as num?,
  averageResponseSeconds: json['averageResponseSeconds'] as num?,
  hourly: (json['hourly'] as List<dynamic>?)
      ?.map((e) => PerformanceHour.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PerformanceToJson(_Performance instance) =>
    <String, dynamic>{
      'bids': instance.bids,
      'wins': instance.wins,
      'acceptedPurchases': instance.acceptedPurchases,
      'winRate': instance.winRate,
      'averageResponseSeconds': instance.averageResponseSeconds,
      'hourly': instance.hourly,
    };
