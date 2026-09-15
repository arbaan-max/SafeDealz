// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assigned_store_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssignedStoreListResponse _$AssignedStoreListResponseFromJson(
  Map<String, dynamic> json,
) => _AssignedStoreListResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => AssignedStore.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AssignedStoreListResponseToJson(
  _AssignedStoreListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
