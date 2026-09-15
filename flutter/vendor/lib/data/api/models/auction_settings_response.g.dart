// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionSettingsResponse _$AuctionSettingsResponseFromJson(
  Map<String, dynamic> json,
) => _AuctionSettingsResponse(
  success: json['success'] as bool,
  data: AuctionSettings.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuctionSettingsResponseToJson(
  _AuctionSettingsResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
