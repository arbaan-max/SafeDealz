// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ManagerListResponse _$ManagerListResponseFromJson(Map<String, dynamic> json) =>
    _ManagerListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => ManagerAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManagerListResponseToJson(
  _ManagerListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
