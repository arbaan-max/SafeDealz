// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealImpl _$$DealImplFromJson(Map<String, dynamic> json) => _$DealImpl(
  id: json['id'] as String,
  auctionRoundId: json['auctionRoundId'] as String,
  deviceId: json['deviceId'] as String,
  amountPaise: (json['amountPaise'] as num).toInt(),
  status: DealStatus.fromJson(json['status'] as String),
  branchId: json['branchId'] as String?,
  vendorAccountId: json['vendorAccountId'] as String?,
  bidId: json['bidId'] as String?,
  feePaise: (json['feePaise'] as num?)?.toInt(),
  totalPaise: (json['totalPaise'] as num?)?.toInt(),
  paymentInstruction: json['paymentInstruction'] == null
      ? null
      : PaymentInstruction.fromJson(
          json['paymentInstruction'] as Map<String, dynamic>,
        ),
  pickedUpAt: json['pickedUpAt'] == null
      ? null
      : DateTime.parse(json['pickedUpAt'] as String),
  branch: json['branch'],
  customerName: json['customerName'] as String?,
  customerPhone: json['customerPhone'] as String?,
  otpVerified: json['otpVerified'] as bool?,
  idCaptured: json['idCaptured'] as bool?,
  portraitCaptured: json['portraitCaptured'] as bool?,
  purchasedDevice: json['purchasedDevice'] == null
      ? null
      : PurchasedDevice.fromJson(
          json['purchasedDevice'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$DealImplToJson(_$DealImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auctionRoundId': instance.auctionRoundId,
      'deviceId': instance.deviceId,
      'amountPaise': instance.amountPaise,
      'status': instance.status,
      'branchId': instance.branchId,
      'vendorAccountId': instance.vendorAccountId,
      'bidId': instance.bidId,
      'feePaise': instance.feePaise,
      'totalPaise': instance.totalPaise,
      'paymentInstruction': instance.paymentInstruction,
      'pickedUpAt': instance.pickedUpAt?.toIso8601String(),
      'branch': instance.branch,
      'customerName': instance.customerName,
      'customerPhone': instance.customerPhone,
      'otpVerified': instance.otpVerified,
      'idCaptured': instance.idCaptured,
      'portraitCaptured': instance.portraitCaptured,
      'purchasedDevice': instance.purchasedDevice,
    };
