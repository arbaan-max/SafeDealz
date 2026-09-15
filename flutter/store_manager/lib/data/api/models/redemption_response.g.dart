// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RedemptionResponse _$RedemptionResponseFromJson(Map<String, dynamic> json) =>
    _RedemptionResponse(
      success: json['success'] as bool,
      data: Redemption.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RedemptionResponseToJson(_RedemptionResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
