// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChainListResponseImpl _$$ChainListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChainListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Chain.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ChainListResponseImplToJson(
  _$ChainListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
