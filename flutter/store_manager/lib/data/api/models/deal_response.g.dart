// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealResponseImpl _$$DealResponseImplFromJson(Map<String, dynamic> json) =>
    _$DealResponseImpl(
      success: json['success'] as bool,
      data: Deal.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DealResponseImplToJson(_$DealResponseImpl instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
