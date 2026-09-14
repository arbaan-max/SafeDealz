// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_reconciliation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingReconciliationImpl _$$BillingReconciliationImplFromJson(
  Map<String, dynamic> json,
) => _$BillingReconciliationImpl(
  paidValuePaise: (json['paidValuePaise'] as num?)?.toInt(),
  rewardOutstandingValuePaise: (json['rewardOutstandingValuePaise'] as num?)
      ?.toInt(),
);

Map<String, dynamic> _$$BillingReconciliationImplToJson(
  _$BillingReconciliationImpl instance,
) => <String, dynamic>{
  'paidValuePaise': instance.paidValuePaise,
  'rewardOutstandingValuePaise': instance.rewardOutstandingValuePaise,
};
