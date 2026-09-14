// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_recharge_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletRechargeWriteImpl _$$WalletRechargeWriteImplFromJson(
  Map<String, dynamic> json,
) => _$WalletRechargeWriteImpl(
  amountPaise: (json['amountPaise'] as num).toInt(),
  idempotencyKey: json['idempotencyKey'] as String,
);

Map<String, dynamic> _$$WalletRechargeWriteImplToJson(
  _$WalletRechargeWriteImpl instance,
) => <String, dynamic>{
  'amountPaise': instance.amountPaise,
  'idempotencyKey': instance.idempotencyKey,
};
