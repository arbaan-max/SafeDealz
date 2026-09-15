// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PerformanceResponse _$PerformanceResponseFromJson(Map<String, dynamic> json) =>
    _PerformanceResponse(
      success: json['success'] as bool,
      data: Performance.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PerformanceResponseToJson(
  _PerformanceResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
