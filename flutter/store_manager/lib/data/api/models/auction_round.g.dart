// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_round.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionRound _$AuctionRoundFromJson(Map<String, dynamic> json) =>
    _AuctionRound(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      branchId: json['branchId'] as String,
      roundNumber: (json['roundNumber'] as num).toInt(),
      status: AuctionRoundStatus.fromJson(json['status'] as String),
      opensAt: DateTime.parse(json['opensAt'] as String),
      closesAt: DateTime.parse(json['closesAt'] as String),
      acceptanceDeadlineAt: json['acceptanceDeadlineAt'] == null
          ? null
          : DateTime.parse(json['acceptanceDeadlineAt'] as String),
      biddingMinutes: (json['biddingMinutes'] as num?)?.toInt(),
      acceptanceMinutes: (json['acceptanceMinutes'] as num?)?.toInt(),
      bidCount: (json['bidCount'] as num?)?.toInt(),
      highestAmountPaise: (json['highestAmountPaise'] as num?)?.toInt(),
      winnerVendorAccountId: json['winnerVendorAccountId'] as String?,
      cancelReason: json['cancelReason'] as String?,
      declineReason: json['declineReason'] as String?,
      expectedAmountPaise: (json['expectedAmountPaise'] as num?)?.toInt(),
      device: json['device'],
      branch: json['branch'],
      ownBid: json['ownBid'] == null
          ? null
          : Bid.fromJson(json['ownBid'] as Map<String, dynamic>),
      winnerBid: json['winnerBid'] == null
          ? null
          : Bid.fromJson(json['winnerBid'] as Map<String, dynamic>),
      winnerVendor: json['winnerVendor'],
    );

Map<String, dynamic> _$AuctionRoundToJson(_AuctionRound instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'branchId': instance.branchId,
      'roundNumber': instance.roundNumber,
      'status': instance.status,
      'opensAt': instance.opensAt.toIso8601String(),
      'closesAt': instance.closesAt.toIso8601String(),
      'acceptanceDeadlineAt': instance.acceptanceDeadlineAt?.toIso8601String(),
      'biddingMinutes': instance.biddingMinutes,
      'acceptanceMinutes': instance.acceptanceMinutes,
      'bidCount': instance.bidCount,
      'highestAmountPaise': instance.highestAmountPaise,
      'winnerVendorAccountId': instance.winnerVendorAccountId,
      'cancelReason': instance.cancelReason,
      'declineReason': instance.declineReason,
      'expectedAmountPaise': instance.expectedAmountPaise,
      'device': instance.device,
      'branch': instance.branch,
      'ownBid': instance.ownBid,
      'winnerBid': instance.winnerBid,
      'winnerVendor': instance.winnerVendor,
    };
