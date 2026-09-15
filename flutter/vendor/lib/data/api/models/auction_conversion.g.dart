// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_conversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionConversion _$AuctionConversionFromJson(Map<String, dynamic> json) =>
    _AuctionConversion(
      started: (json['started'] as num?)?.toInt(),
      accepted: (json['accepted'] as num?)?.toInt(),
      rate: json['rate'] as num?,
    );

Map<String, dynamic> _$AuctionConversionToJson(_AuctionConversion instance) =>
    <String, dynamic>{
      'started': instance.started,
      'accepted': instance.accepted,
      'rate': instance.rate,
    };
