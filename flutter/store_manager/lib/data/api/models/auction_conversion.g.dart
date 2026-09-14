// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_conversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionConversionImpl _$$AuctionConversionImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionConversionImpl(
  started: (json['started'] as num?)?.toInt(),
  accepted: (json['accepted'] as num?)?.toInt(),
  rate: json['rate'] as num?,
);

Map<String, dynamic> _$$AuctionConversionImplToJson(
  _$AuctionConversionImpl instance,
) => <String, dynamic>{
  'started': instance.started,
  'accepted': instance.accepted,
  'rate': instance.rate,
};
