// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorListResponseImpl _$$VendorListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$VendorListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => VendorAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$VendorListResponseImplToJson(
  _$VendorListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
