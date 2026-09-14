// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorResponseImpl _$$VendorResponseImplFromJson(Map<String, dynamic> json) =>
    _$VendorResponseImpl(
      success: json['success'] as bool,
      data: VendorAccount.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorResponseImplToJson(
  _$VendorResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
