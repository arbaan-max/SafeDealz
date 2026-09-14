// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidWriteImpl _$$BidWriteImplFromJson(Map<String, dynamic> json) =>
    _$BidWriteImpl(
      amountPaise: (json['amountPaise'] as num).toInt(),
      idempotencyKey: json['idempotencyKey'] as String,
      basePaise: (json['basePaise'] as num?)?.toInt(),
      cosmeticDeductionPaise: (json['cosmeticDeductionPaise'] as num?)?.toInt(),
      batteryDeductionPaise: (json['batteryDeductionPaise'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BidWriteImplToJson(_$BidWriteImpl instance) =>
    <String, dynamic>{
      'amountPaise': instance.amountPaise,
      'idempotencyKey': instance.idempotencyKey,
      'basePaise': instance.basePaise,
      'cosmeticDeductionPaise': instance.cosmeticDeductionPaise,
      'batteryDeductionPaise': instance.batteryDeductionPaise,
    };
