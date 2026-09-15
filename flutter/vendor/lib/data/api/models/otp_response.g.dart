// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpResponse _$OtpResponseFromJson(Map<String, dynamic> json) => _OtpResponse(
  success: json['success'] as bool,
  data: Data5.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OtpResponseToJson(_OtpResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
