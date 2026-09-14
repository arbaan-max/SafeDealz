// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedemptionWriteImpl _$$RedemptionWriteImplFromJson(
  Map<String, dynamic> json,
) => _$RedemptionWriteImpl(
  customerPhone: json['customerPhone'] as String,
  invoiceNumber: json['invoiceNumber'] as String,
  category: json['category'] as String,
  billAmountPaise: (json['billAmountPaise'] as num).toInt(),
  discountPaise: (json['discountPaise'] as num).toInt(),
  branchId: json['branchId'] as String?,
);

Map<String, dynamic> _$$RedemptionWriteImplToJson(
  _$RedemptionWriteImpl instance,
) => <String, dynamic>{
  'customerPhone': instance.customerPhone,
  'invoiceNumber': instance.invoiceNumber,
  'category': instance.category,
  'billAmountPaise': instance.billAmountPaise,
  'discountPaise': instance.discountPaise,
  'branchId': instance.branchId,
};
