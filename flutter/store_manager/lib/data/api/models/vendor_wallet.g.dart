// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorWalletImpl _$$VendorWalletImplFromJson(Map<String, dynamic> json) =>
    _$VendorWalletImpl(
      id: json['id'] as String?,
      vendorAccountId: json['vendorAccountId'] as String?,
      availablePaise: (json['availablePaise'] as num?)?.toInt(),
      reservedPaise: (json['reservedPaise'] as num?)?.toInt(),
      processingPaise: (json['processingPaise'] as num?)?.toInt(),
      paymentsProcessingPaise: (json['paymentsProcessingPaise'] as num?)
          ?.toInt(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$VendorWalletImplToJson(_$VendorWalletImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorAccountId': instance.vendorAccountId,
      'availablePaise': instance.availablePaise,
      'reservedPaise': instance.reservedPaise,
      'processingPaise': instance.processingPaise,
      'paymentsProcessingPaise': instance.paymentsProcessingPaise,
      'currency': instance.currency,
    };
