// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_credit_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletCreditWrite _$WalletCreditWriteFromJson(Map<String, dynamic> json) =>
    _WalletCreditWrite(
      amountPaise: (json['amountPaise'] as num).toInt(),
      idempotencyKey: json['idempotencyKey'] as String,
      reason: json['reason'] as String?,
      referenceId: json['referenceId'] as String?,
    );

Map<String, dynamic> _$WalletCreditWriteToJson(_WalletCreditWrite instance) =>
    <String, dynamic>{
      'amountPaise': instance.amountPaise,
      'idempotencyKey': instance.idempotencyKey,
      'reason': instance.reason,
      'referenceId': instance.referenceId,
    };
