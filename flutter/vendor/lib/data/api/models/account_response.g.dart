// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountResponseImpl _$$AccountResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AccountResponseImpl(
  success: json['success'] as bool,
  data: AccountSummary.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AccountResponseImplToJson(
  _$AccountResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
