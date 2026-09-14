// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminResponseImpl _$$AdminResponseImplFromJson(Map<String, dynamic> json) =>
    _$AdminResponseImpl(
      success: json['success'] as bool,
      data: AdminAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminResponseImplToJson(_$AdminResponseImpl instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
