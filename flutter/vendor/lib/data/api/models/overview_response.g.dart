// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverviewResponseImpl _$$OverviewResponseImplFromJson(
  Map<String, dynamic> json,
) => _$OverviewResponseImpl(
  success: json['success'] as bool,
  data: Overview.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$OverviewResponseImplToJson(
  _$OverviewResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
