// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_hour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PerformanceHourImpl _$$PerformanceHourImplFromJson(
  Map<String, dynamic> json,
) => _$PerformanceHourImpl(
  hour: (json['hour'] as num?)?.toInt(),
  bids: (json['bids'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PerformanceHourImplToJson(
  _$PerformanceHourImpl instance,
) => <String, dynamic>{'hour': instance.hour, 'bids': instance.bids};
