// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_reserve_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletReserveWrite _$WalletReserveWriteFromJson(Map<String, dynamic> json) =>
    _WalletReserveWrite(
      amountPaise: (json['amountPaise'] as num).toInt(),
      idempotencyKey: json['idempotencyKey'] as String,
      reason: json['reason'] as String?,
      referenceId: json['referenceId'] as String?,
      vendorAccountId: json['vendorAccountId'] as String?,
    );

Map<String, dynamic> _$WalletReserveWriteToJson(_WalletReserveWrite instance) =>
    <String, dynamic>{
      'amountPaise': instance.amountPaise,
      'idempotencyKey': instance.idempotencyKey,
      'reason': instance.reason,
      'referenceId': instance.referenceId,
      'vendorAccountId': instance.vendorAccountId,
    };
