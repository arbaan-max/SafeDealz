// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedemptionResponseImpl _$$RedemptionResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RedemptionResponseImpl(
  success: json['success'] as bool,
  data: Redemption.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RedemptionResponseImplToJson(
  _$RedemptionResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
