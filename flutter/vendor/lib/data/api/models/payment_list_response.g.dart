// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentListResponse _$PaymentListResponseFromJson(Map<String, dynamic> json) =>
    _PaymentListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => PaymentInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentListResponseToJson(
  _PaymentListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
