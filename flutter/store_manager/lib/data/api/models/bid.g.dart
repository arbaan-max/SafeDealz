// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bid _$BidFromJson(Map<String, dynamic> json) => _Bid(
  id: json['id'] as String,
  roundId: json['roundId'] as String,
  deviceId: json['deviceId'] as String,
  vendorAccountId: json['vendorAccountId'] as String,
  amountPaise: (json['amountPaise'] as num).toInt(),
  feePaise: (json['feePaise'] as num).toInt(),
  totalPaise: (json['totalPaise'] as num).toInt(),
  status: BidStatus.fromJson(json['status'] as String),
  feeRate: json['feeRate'] as num?,
  basePaise: (json['basePaise'] as num?)?.toInt(),
  cosmeticDeductionPaise: (json['cosmeticDeductionPaise'] as num?)?.toInt(),
  batteryDeductionPaise: (json['batteryDeductionPaise'] as num?)?.toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$BidToJson(_Bid instance) => <String, dynamic>{
  'id': instance.id,
  'roundId': instance.roundId,
  'deviceId': instance.deviceId,
  'vendorAccountId': instance.vendorAccountId,
  'amountPaise': instance.amountPaise,
  'feePaise': instance.feePaise,
  'totalPaise': instance.totalPaise,
  'status': instance.status,
  'feeRate': instance.feeRate,
  'basePaise': instance.basePaise,
  'cosmeticDeductionPaise': instance.cosmeticDeductionPaise,
  'batteryDeductionPaise': instance.batteryDeductionPaise,
  'createdAt': instance.createdAt?.toIso8601String(),
};
