// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RedemptionListResponse _$RedemptionListResponseFromJson(
  Map<String, dynamic> json,
) => _RedemptionListResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Redemption.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RedemptionListResponseToJson(
  _RedemptionListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
