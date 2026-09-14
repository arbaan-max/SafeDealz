// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchListResponseImpl _$$BranchListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BranchListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => Branch.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$BranchListResponseImplToJson(
  _$BranchListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
