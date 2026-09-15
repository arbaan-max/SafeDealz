// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminListResponse _$AdminListResponseFromJson(Map<String, dynamic> json) =>
    _AdminListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => AdminAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminListResponseToJson(_AdminListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
