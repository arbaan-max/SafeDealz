// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminListResponseImpl _$$AdminListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AdminListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => AdminAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$AdminListResponseImplToJson(
  _$AdminListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
