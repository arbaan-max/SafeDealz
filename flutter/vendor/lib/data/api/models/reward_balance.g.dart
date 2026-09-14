// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardBalanceImpl _$$RewardBalanceImplFromJson(Map<String, dynamic> json) =>
    _$RewardBalanceImpl(
      id: json['id'] as String?,
      customerPhone: json['customerPhone'] as String?,
      customerName: json['customerName'] as String?,
      branchId: json['branchId'] as String?,
      branchName: json['branchName'] as String?,
      chainId: json['chainId'] as String?,
      pointsBalance: (json['pointsBalance'] as num?)?.toInt(),
      issuedPoints: (json['issuedPoints'] as num?)?.toInt(),
      redeemedPoints: (json['redeemedPoints'] as num?)?.toInt(),
      outstandingValuePaise: (json['outstandingValuePaise'] as num?)?.toInt(),
      redeemableAtThisBranch: json['redeemableAtThisBranch'] as bool?,
    );

Map<String, dynamic> _$$RewardBalanceImplToJson(_$RewardBalanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerPhone': instance.customerPhone,
      'customerName': instance.customerName,
      'branchId': instance.branchId,
      'branchName': instance.branchName,
      'chainId': instance.chainId,
      'pointsBalance': instance.pointsBalance,
      'issuedPoints': instance.issuedPoints,
      'redeemedPoints': instance.redeemedPoints,
      'outstandingValuePaise': instance.outstandingValuePaise,
      'redeemableAtThisBranch': instance.redeemableAtThisBranch,
    };
