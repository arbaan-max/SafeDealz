// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealListResponseImpl _$$DealListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DealListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Deal.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$DealListResponseImplToJson(
  _$DealListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
