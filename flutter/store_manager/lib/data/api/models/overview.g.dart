// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Overview _$OverviewFromJson(Map<String, dynamic> json) => _Overview(
  liveAuctions: (json['liveAuctions'] as num?)?.toInt(),
  awaitingAcceptance: (json['awaitingAcceptance'] as num?)?.toInt(),
  paymentExceptions: (json['paymentExceptions'] as num?)?.toInt(),
  completedValuePaise: (json['completedValuePaise'] as num?)?.toInt(),
  needsAttention: (json['needsAttention'] as List<dynamic>?)
      ?.map((e) => OverviewAttention.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OverviewToJson(_Overview instance) => <String, dynamic>{
  'liveAuctions': instance.liveAuctions,
  'awaitingAcceptance': instance.awaitingAcceptance,
  'paymentExceptions': instance.paymentExceptions,
  'completedValuePaise': instance.completedValuePaise,
  'needsAttention': instance.needsAttention,
};
