// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletDetail _$WalletDetailFromJson(Map<String, dynamic> json) =>
    _WalletDetail(
      id: json['id'] as String?,
      vendorAccountId: json['vendorAccountId'] as String?,
      availablePaise: (json['availablePaise'] as num?)?.toInt(),
      reservedPaise: (json['reservedPaise'] as num?)?.toInt(),
      processingPaise: (json['processingPaise'] as num?)?.toInt(),
      paymentsProcessingPaise: (json['paymentsProcessingPaise'] as num?)
          ?.toInt(),
      currency: json['currency'] as String?,
      ledger: (json['ledger'] as List<dynamic>?)
          ?.map((e) => WalletLedgerEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      reservations: (json['reservations'] as List<dynamic>?)
          ?.map((e) => WalletHold.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WalletDetailToJson(_WalletDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorAccountId': instance.vendorAccountId,
      'availablePaise': instance.availablePaise,
      'reservedPaise': instance.reservedPaise,
      'processingPaise': instance.processingPaise,
      'paymentsProcessingPaise': instance.paymentsProcessingPaise,
      'currency': instance.currency,
      'ledger': instance.ledger,
      'reservations': instance.reservations,
    };
