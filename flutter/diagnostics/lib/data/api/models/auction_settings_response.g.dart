// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionSettingsResponseImpl _$$AuctionSettingsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionSettingsResponseImpl(
  success: json['success'] as bool,
  data: AuctionSettings.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AuctionSettingsResponseImplToJson(
  _$AuctionSettingsResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
