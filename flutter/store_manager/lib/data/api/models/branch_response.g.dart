// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchResponseImpl _$$BranchResponseImplFromJson(Map<String, dynamic> json) =>
    _$BranchResponseImpl(
      success: json['success'] as bool,
      data: Branch.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BranchResponseImplToJson(
  _$BranchResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
