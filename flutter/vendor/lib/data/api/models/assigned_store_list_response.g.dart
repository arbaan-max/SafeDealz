// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assigned_store_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignedStoreListResponseImpl _$$AssignedStoreListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AssignedStoreListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => AssignedStore.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$AssignedStoreListResponseImplToJson(
  _$AssignedStoreListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
