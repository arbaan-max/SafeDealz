// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchResponse _$BranchResponseFromJson(Map<String, dynamic> json) =>
    _BranchResponse(
      success: json['success'] as bool,
      data: Branch.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BranchResponseToJson(_BranchResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
