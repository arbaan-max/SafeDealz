// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogResponseImpl _$$CatalogResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CatalogResponseImpl(
  success: json['success'] as bool,
  data: Catalog.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CatalogResponseImplToJson(
  _$CatalogResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
