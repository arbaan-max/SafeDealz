// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    _PaymentResponse(
      success: json['success'] as bool,
      data: PaymentInstruction.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentResponseToJson(_PaymentResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
