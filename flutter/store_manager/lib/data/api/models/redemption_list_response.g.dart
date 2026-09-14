// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedemptionListResponseImpl _$$RedemptionListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RedemptionListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Redemption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$RedemptionListResponseImplToJson(
  _$RedemptionListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
