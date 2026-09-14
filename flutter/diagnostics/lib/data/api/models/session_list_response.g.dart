// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionListResponseImpl _$$SessionListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SessionListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => AccountSession.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$SessionListResponseImplToJson(
  _$SessionListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
