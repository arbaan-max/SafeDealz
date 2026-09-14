// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedemptionImpl _$$RedemptionImplFromJson(Map<String, dynamic> json) =>
    _$RedemptionImpl(
      id: json['id'] as String?,
      customerPhone: json['customerPhone'] as String?,
      customerPhoneMasked: json['customerPhoneMasked'] as String?,
      customerName: json['customerName'] as String?,
      branchId: json['branchId'] as String?,
      invoiceNumber: json['invoiceNumber'] as String?,
      category: json['category'] as String?,
      billAmountPaise: (json['billAmountPaise'] as num?)?.toInt(),
      discountPaise: (json['discountPaise'] as num?)?.toInt(),
      points: (json['points'] as num?)?.toInt(),
      remainingPoints: (json['remainingPoints'] as num?)?.toInt(),
      remainingValuePaise: (json['remainingValuePaise'] as num?)?.toInt(),
      status: json['status'] == null
          ? null
          : RedemptionStatus.fromJson(json['status'] as String),
      duplicateInvoice: json['duplicateInvoice'] as bool?,
      otpRequired: json['otpRequired'] as bool?,
      redeemedAt: json['redeemedAt'] == null
          ? null
          : DateTime.parse(json['redeemedAt'] as String),
      reminder: json['reminder'] as String?,
    );

Map<String, dynamic> _$$RedemptionImplToJson(_$RedemptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerPhone': instance.customerPhone,
      'customerPhoneMasked': instance.customerPhoneMasked,
      'customerName': instance.customerName,
      'branchId': instance.branchId,
      'invoiceNumber': instance.invoiceNumber,
      'category': instance.category,
      'billAmountPaise': instance.billAmountPaise,
      'discountPaise': instance.discountPaise,
      'points': instance.points,
      'remainingPoints': instance.remainingPoints,
      'remainingValuePaise': instance.remainingValuePaise,
      'status': instance.status,
      'duplicateInvoice': instance.duplicateInvoice,
      'otpRequired': instance.otpRequired,
      'redeemedAt': instance.redeemedAt?.toIso8601String(),
      'reminder': instance.reminder,
    };
