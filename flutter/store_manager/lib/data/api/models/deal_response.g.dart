// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DealResponse _$DealResponseFromJson(Map<String, dynamic> json) =>
    _DealResponse(
      success: json['success'] as bool,
      data: Deal.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DealResponseToJson(_DealResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
