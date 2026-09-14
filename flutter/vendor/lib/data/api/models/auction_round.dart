// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'auction_round_status.dart';
import 'bid.dart';

part 'auction_round.freezed.dart';
part 'auction_round.g.dart';

@Freezed()
class AuctionRound with _$AuctionRound {
  const factory AuctionRound({
    required String id,
    required String deviceId,
    required String branchId,
    required int roundNumber,
    required AuctionRoundStatus status,
    required DateTime opensAt,
    required DateTime closesAt,
    DateTime? acceptanceDeadlineAt,
    int? biddingMinutes,
    int? acceptanceMinutes,
    int? bidCount,
    int? highestAmountPaise,
    String? winnerVendorAccountId,
    String? cancelReason,
    String? declineReason,
    int? expectedAmountPaise,
    dynamic device,
    dynamic branch,
    Bid? ownBid,
    Bid? winnerBid,
    dynamic winnerVendor,
  }) = _AuctionRound;
  
  factory AuctionRound.fromJson(Map<String, Object?> json) => _$AuctionRoundFromJson(json);
}
