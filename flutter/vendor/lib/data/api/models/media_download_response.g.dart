// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_download_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaDownloadResponse _$MediaDownloadResponseFromJson(
  Map<String, dynamic> json,
) => _MediaDownloadResponse(
  success: json['success'] as bool,
  data: Data9.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MediaDownloadResponseToJson(
  _MediaDownloadResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
