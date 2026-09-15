// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_conversion.freezed.dart';
part 'auction_conversion.g.dart';

@Freezed()
abstract class AuctionConversion with _$AuctionConversion {
  const factory AuctionConversion({
    int? started,
    int? accepted,
    num? rate,
  }) = _AuctionConversion;
  
  factory AuctionConversion.fromJson(Map<String, Object?> json) => _$AuctionConversionFromJson(json);
}
