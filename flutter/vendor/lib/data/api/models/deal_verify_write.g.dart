// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_verify_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealVerifyWriteImpl _$$DealVerifyWriteImplFromJson(
  Map<String, dynamic> json,
) => _$DealVerifyWriteImpl(
  customerName: json['customerName'] as String,
  customerPhone: json['customerPhone'] as String,
  otp: json['otp'] as String,
  idCaptured: json['idCaptured'] as bool,
  portraitCaptured: json['portraitCaptured'] as bool,
  purchasedDevice: PurchasedDevice.fromJson(
    json['purchasedDevice'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$DealVerifyWriteImplToJson(
  _$DealVerifyWriteImpl instance,
) => <String, dynamic>{
  'customerName': instance.customerName,
  'customerPhone': instance.customerPhone,
  'otp': instance.otp,
  'idCaptured': instance.idCaptured,
  'portraitCaptured': instance.portraitCaptured,
  'purchasedDevice': instance.purchasedDevice,
};
