// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountSummaryImpl _$$AccountSummaryImplFromJson(Map<String, dynamic> json) =>
    _$AccountSummaryImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      role: AccountRole.fromJson(json['role'] as String),
    );

Map<String, dynamic> _$$AccountSummaryImplToJson(
  _$AccountSummaryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'role': instance.role,
};
