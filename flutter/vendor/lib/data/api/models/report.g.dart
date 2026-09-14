// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
  auctionConversion: json['auctionConversion'] == null
      ? null
      : AuctionConversion.fromJson(
          json['auctionConversion'] as Map<String, dynamic>,
        ),
  acceptedValuePaise: (json['acceptedValuePaise'] as num?)?.toInt(),
  paidValuePaise: (json['paidValuePaise'] as num?)?.toInt(),
  pickupCount: (json['pickupCount'] as num?)?.toInt(),
  walletMovementsPaise: (json['walletMovementsPaise'] as num?)?.toInt(),
  rewardIssuedPoints: (json['rewardIssuedPoints'] as num?)?.toInt(),
  rewardRedeemedPoints: (json['rewardRedeemedPoints'] as num?)?.toInt(),
  billingReconciliation: json['billingReconciliation'] == null
      ? null
      : BillingReconciliation.fromJson(
          json['billingReconciliation'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'auctionConversion': instance.auctionConversion,
      'acceptedValuePaise': instance.acceptedValuePaise,
      'paidValuePaise': instance.paidValuePaise,
      'pickupCount': instance.pickupCount,
      'walletMovementsPaise': instance.walletMovementsPaise,
      'rewardIssuedPoints': instance.rewardIssuedPoints,
      'rewardRedeemedPoints': instance.rewardRedeemedPoints,
      'billingReconciliation': instance.billingReconciliation,
    };
