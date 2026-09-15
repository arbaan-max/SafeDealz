// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendorResponse _$VendorResponseFromJson(Map<String, dynamic> json) =>
    _VendorResponse(
      success: json['success'] as bool,
      data: VendorAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendorResponseToJson(_VendorResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
