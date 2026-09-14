// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseImpl _$$PaymentResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentResponseImpl(
  success: json['success'] as bool,
  data: PaymentInstruction.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PaymentResponseImplToJson(
  _$PaymentResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
