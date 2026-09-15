// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OverviewResponse _$OverviewResponseFromJson(Map<String, dynamic> json) =>
    _OverviewResponse(
      success: json['success'] as bool,
      data: Overview.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OverviewResponseToJson(_OverviewResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
