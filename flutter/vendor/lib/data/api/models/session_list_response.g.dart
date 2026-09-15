// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionListResponse _$SessionListResponseFromJson(Map<String, dynamic> json) =>
    _SessionListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => AccountSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionListResponseToJson(
  _SessionListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
