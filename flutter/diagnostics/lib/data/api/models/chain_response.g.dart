// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChainResponseImpl _$$ChainResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChainResponseImpl(
      success: json['success'] as bool,
      data: Chain.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChainResponseImplToJson(_$ChainResponseImpl instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
