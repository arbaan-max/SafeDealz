// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminResponse _$AdminResponseFromJson(Map<String, dynamic> json) =>
    _AdminResponse(
      success: json['success'] as bool,
      data: AdminAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminResponseToJson(_AdminResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
