// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ManagerResponse _$ManagerResponseFromJson(Map<String, dynamic> json) =>
    _ManagerResponse(
      success: json['success'] as bool,
      data: ManagerAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ManagerResponseToJson(_ManagerResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
