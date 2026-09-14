// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_reserve_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletReserveWriteImpl _$$WalletReserveWriteImplFromJson(
  Map<String, dynamic> json,
) => _$WalletReserveWriteImpl(
  amountPaise: (json['amountPaise'] as num).toInt(),
  idempotencyKey: json['idempotencyKey'] as String,
  reason: json['reason'] as String?,
  referenceId: json['referenceId'] as String?,
  vendorAccountId: json['vendorAccountId'] as String?,
);

Map<String, dynamic> _$$WalletReserveWriteImplToJson(
  _$WalletReserveWriteImpl instance,
) => <String, dynamic>{
  'amountPaise': instance.amountPaise,
  'idempotencyKey': instance.idempotencyKey,
  'reason': instance.reason,
  'referenceId': instance.referenceId,
  'vendorAccountId': instance.vendorAccountId,
};
