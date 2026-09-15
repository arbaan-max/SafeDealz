// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChainListResponse _$ChainListResponseFromJson(Map<String, dynamic> json) =>
    _ChainListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Chain.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChainListResponseToJson(_ChainListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
