// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_recharge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletRecharge _$WalletRechargeFromJson(Map<String, dynamic> json) =>
    _WalletRecharge(
      id: json['id'] as String,
      vendorAccountId: json['vendorAccountId'] as String,
      amountPaise: (json['amountPaise'] as num).toInt(),
      orderId: json['orderId'] as String,
      status: WalletRechargeStatus.fromJson(json['status'] as String),
      keyId: json['keyId'] as String,
      clientAcknowledged: json['clientAcknowledged'] as bool,
      paymentId: json['paymentId'] as String?,
    );

Map<String, dynamic> _$WalletRechargeToJson(_WalletRecharge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorAccountId': instance.vendorAccountId,
      'amountPaise': instance.amountPaise,
      'orderId': instance.orderId,
      'status': instance.status,
      'keyId': instance.keyId,
      'clientAcknowledged': instance.clientAcknowledged,
      'paymentId': instance.paymentId,
    };
