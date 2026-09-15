// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_ledger_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardLedgerEntry _$RewardLedgerEntryFromJson(Map<String, dynamic> json) =>
    _RewardLedgerEntry(
      id: json['id'] as String?,
      type: json['type'] == null
          ? null
          : RewardLedgerEntryType.fromJson(json['type'] as String),
      points: (json['points'] as num?)?.toInt(),
      valuePaise: (json['valuePaise'] as num?)?.toInt(),
      balanceAfter: (json['balanceAfter'] as num?)?.toInt(),
      branchId: json['branchId'] as String?,
      dealId: json['dealId'] as String?,
      invoiceNumber: json['invoiceNumber'] as String?,
      policyVersion: (json['policyVersion'] as num?)?.toInt(),
      earnPointsPerHundredRupees: (json['earnPointsPerHundredRupees'] as num?)
          ?.toInt(),
      pointValuePaise: (json['pointValuePaise'] as num?)?.toInt(),
      reason: json['reason'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$RewardLedgerEntryToJson(_RewardLedgerEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'points': instance.points,
      'valuePaise': instance.valuePaise,
      'balanceAfter': instance.balanceAfter,
      'branchId': instance.branchId,
      'dealId': instance.dealId,
      'invoiceNumber': instance.invoiceNumber,
      'policyVersion': instance.policyVersion,
      'earnPointsPerHundredRupees': instance.earnPointsPerHundredRupees,
      'pointValuePaise': instance.pointValuePaise,
      'reason': instance.reason,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
