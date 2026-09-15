// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchListResponse _$BranchListResponseFromJson(Map<String, dynamic> json) =>
    _BranchListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Branch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BranchListResponseToJson(_BranchListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
