// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_hour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PerformanceHour _$PerformanceHourFromJson(Map<String, dynamic> json) =>
    _PerformanceHour(
      hour: (json['hour'] as num?)?.toInt(),
      bids: (json['bids'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PerformanceHourToJson(_PerformanceHour instance) =>
    <String, dynamic>{'hour': instance.hour, 'bids': instance.bids};
