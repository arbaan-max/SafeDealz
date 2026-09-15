// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BidWrite _$BidWriteFromJson(Map<String, dynamic> json) => _BidWrite(
  amountPaise: (json['amountPaise'] as num).toInt(),
  idempotencyKey: json['idempotencyKey'] as String,
  basePaise: (json['basePaise'] as num?)?.toInt(),
  cosmeticDeductionPaise: (json['cosmeticDeductionPaise'] as num?)?.toInt(),
  batteryDeductionPaise: (json['batteryDeductionPaise'] as num?)?.toInt(),
);

Map<String, dynamic> _$BidWriteToJson(_BidWrite instance) => <String, dynamic>{
  'amountPaise': instance.amountPaise,
  'idempotencyKey': instance.idempotencyKey,
  'basePaise': instance.basePaise,
  'cosmeticDeductionPaise': instance.cosmeticDeductionPaise,
  'batteryDeductionPaise': instance.batteryDeductionPaise,
};
