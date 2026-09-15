// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DealListResponse _$DealListResponseFromJson(Map<String, dynamic> json) =>
    _DealListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Deal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DealListResponseToJson(_DealListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
