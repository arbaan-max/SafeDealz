// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpResponseImpl _$$OtpResponseImplFromJson(Map<String, dynamic> json) =>
    _$OtpResponseImpl(
      success: json['success'] as bool,
      data: Data5.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtpResponseImplToJson(_$OtpResponseImpl instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
