// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManagerResponseImpl _$$ManagerResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ManagerResponseImpl(
  success: json['success'] as bool,
  data: ManagerAccount.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ManagerResponseImplToJson(
  _$ManagerResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
