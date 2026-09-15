// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_round.dart';

part 'data6.freezed.dart';
part 'data6.g.dart';

@Freezed()
abstract class Data6 with _$Data6 {
  const factory Data6({
    int? closedCount,
    List<AuctionRound>? closed,
    int? expiredCount,
    List<AuctionRound>? expired,
  }) = _Data6;
  
  factory Data6.fromJson(Map<String, Object?> json) => _$Data6FromJson(json);
}
