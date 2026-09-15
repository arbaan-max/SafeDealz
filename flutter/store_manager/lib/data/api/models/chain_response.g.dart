// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChainResponse _$ChainResponseFromJson(Map<String, dynamic> json) =>
    _ChainResponse(
      success: json['success'] as bool,
      data: Chain.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChainResponseToJson(_ChainResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
