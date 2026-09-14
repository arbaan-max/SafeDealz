// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PerformanceResponseImpl _$$PerformanceResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PerformanceResponseImpl(
  success: json['success'] as bool,
  data: Performance.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PerformanceResponseImplToJson(
  _$PerformanceResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
