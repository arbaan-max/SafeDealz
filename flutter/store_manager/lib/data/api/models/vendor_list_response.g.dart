// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendorListResponse _$VendorListResponseFromJson(Map<String, dynamic> json) =>
    _VendorListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => VendorAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VendorListResponseToJson(_VendorListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
