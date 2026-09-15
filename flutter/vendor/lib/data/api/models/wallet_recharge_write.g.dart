// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_recharge_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletRechargeWrite _$WalletRechargeWriteFromJson(Map<String, dynamic> json) =>
    _WalletRechargeWrite(
      amountPaise: (json['amountPaise'] as num).toInt(),
      idempotencyKey: json['idempotencyKey'] as String,
    );

Map<String, dynamic> _$WalletRechargeWriteToJson(
  _WalletRechargeWrite instance,
) => <String, dynamic>{
  'amountPaise': instance.amountPaise,
  'idempotencyKey': instance.idempotencyKey,
};
