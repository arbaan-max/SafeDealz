// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_hold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletHold _$WalletHoldFromJson(Map<String, dynamic> json) => _WalletHold(
  id: json['id'] as String?,
  amountPaise: (json['amountPaise'] as num?)?.toInt(),
  status: json['status'] == null
      ? null
      : WalletHoldStatus.fromJson(json['status'] as String),
  reason: json['reason'] as String?,
  idempotencyKey: json['idempotencyKey'] as String?,
  referenceId: json['referenceId'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$WalletHoldToJson(_WalletHold instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amountPaise': instance.amountPaise,
      'status': instance.status,
      'reason': instance.reason,
      'idempotencyKey': instance.idempotencyKey,
      'referenceId': instance.referenceId,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
