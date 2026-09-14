// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManagerListResponseImpl _$$ManagerListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ManagerListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => ManagerAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ManagerListResponseImplToJson(
  _$ManagerListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
