// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_reconciliation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillingReconciliation _$BillingReconciliationFromJson(
  Map<String, dynamic> json,
) => _BillingReconciliation(
  paidValuePaise: (json['paidValuePaise'] as num?)?.toInt(),
  rewardOutstandingValuePaise: (json['rewardOutstandingValuePaise'] as num?)
      ?.toInt(),
);

Map<String, dynamic> _$BillingReconciliationToJson(
  _BillingReconciliation instance,
) => <String, dynamic>{
  'paidValuePaise': instance.paidValuePaise,
  'rewardOutstandingValuePaise': instance.rewardOutstandingValuePaise,
};
