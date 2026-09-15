// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogResponse _$CatalogResponseFromJson(Map<String, dynamic> json) =>
    _CatalogResponse(
      success: json['success'] as bool,
      data: Catalog.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogResponseToJson(_CatalogResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
