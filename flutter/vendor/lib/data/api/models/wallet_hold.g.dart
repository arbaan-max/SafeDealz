// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_hold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletHoldImpl _$$WalletHoldImplFromJson(Map<String, dynamic> json) =>
    _$WalletHoldImpl(
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

Map<String, dynamic> _$$WalletHoldImplToJson(_$WalletHoldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amountPaise': instance.amountPaise,
      'status': instance.status,
      'reason': instance.reason,
      'idempotencyKey': instance.idempotencyKey,
      'referenceId': instance.referenceId,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
