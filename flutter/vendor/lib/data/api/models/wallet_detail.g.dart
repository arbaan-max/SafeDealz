// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletDetailImpl _$$WalletDetailImplFromJson(Map<String, dynamic> json) =>
    _$WalletDetailImpl(
      id: json['id'] as String?,
      vendorAccountId: json['vendorAccountId'] as String?,
      availablePaise: (json['availablePaise'] as num?)?.toInt(),
      reservedPaise: (json['reservedPaise'] as num?)?.toInt(),
      processingPaise: (json['processingPaise'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      ledger: (json['ledger'] as List<dynamic>?)
          ?.map((e) => WalletLedgerEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      reservations: (json['reservations'] as List<dynamic>?)
          ?.map((e) => WalletHold.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WalletDetailImplToJson(_$WalletDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorAccountId': instance.vendorAccountId,
      'availablePaise': instance.availablePaise,
      'reservedPaise': instance.reservedPaise,
      'processingPaise': instance.processingPaise,
      'currency': instance.currency,
      'ledger': instance.ledger,
      'reservations': instance.reservations,
    };
