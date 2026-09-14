// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_ledger_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletLedgerEntryImpl _$$WalletLedgerEntryImplFromJson(
  Map<String, dynamic> json,
) => _$WalletLedgerEntryImpl(
  id: json['id'] as String?,
  type: json['type'] == null
      ? null
      : WalletLedgerEntryType.fromJson(json['type'] as String),
  amountPaise: (json['amountPaise'] as num?)?.toInt(),
  availableAfterPaise: (json['availableAfterPaise'] as num?)?.toInt(),
  reservedAfterPaise: (json['reservedAfterPaise'] as num?)?.toInt(),
  reason: json['reason'] as String?,
  referenceId: json['referenceId'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$WalletLedgerEntryImplToJson(
  _$WalletLedgerEntryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'amountPaise': instance.amountPaise,
  'availableAfterPaise': instance.availableAfterPaise,
  'reservedAfterPaise': instance.reservedAfterPaise,
  'reason': instance.reason,
  'referenceId': instance.referenceId,
  'createdAt': instance.createdAt?.toIso8601String(),
};
