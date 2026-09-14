// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverviewImpl _$$OverviewImplFromJson(Map<String, dynamic> json) =>
    _$OverviewImpl(
      liveAuctions: (json['liveAuctions'] as num?)?.toInt(),
      awaitingAcceptance: (json['awaitingAcceptance'] as num?)?.toInt(),
      paymentExceptions: (json['paymentExceptions'] as num?)?.toInt(),
      completedValuePaise: (json['completedValuePaise'] as num?)?.toInt(),
      needsAttention: (json['needsAttention'] as List<dynamic>?)
          ?.map((e) => OverviewAttention.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OverviewImplToJson(_$OverviewImpl instance) =>
    <String, dynamic>{
      'liveAuctions': instance.liveAuctions,
      'awaitingAcceptance': instance.awaitingAcceptance,
      'paymentExceptions': instance.paymentExceptions,
      'completedValuePaise': instance.completedValuePaise,
      'needsAttention': instance.needsAttention,
    };
