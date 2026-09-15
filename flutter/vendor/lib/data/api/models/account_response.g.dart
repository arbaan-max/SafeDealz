// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountResponse _$AccountResponseFromJson(Map<String, dynamic> json) =>
    _AccountResponse(
      success: json['success'] as bool,
      data: AccountSummary.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountResponseToJson(_AccountResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
