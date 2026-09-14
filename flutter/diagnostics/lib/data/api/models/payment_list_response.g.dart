// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentListResponseImpl _$$PaymentListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => PaymentInstruction.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PaymentListResponseImplToJson(
  _$PaymentListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
