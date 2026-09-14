// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_wallet.freezed.dart';
part 'vendor_wallet.g.dart';

@Freezed()
class VendorWallet with _$VendorWallet {
  const factory VendorWallet({
    String? id,
    String? vendorAccountId,
    int? availablePaise,
    int? reservedPaise,
    int? processingPaise,
    int? paymentsProcessingPaise,
    String? currency,
  }) = _VendorWallet;
  
  factory VendorWallet.fromJson(Map<String, Object?> json) => _$VendorWalletFromJson(json);
}
