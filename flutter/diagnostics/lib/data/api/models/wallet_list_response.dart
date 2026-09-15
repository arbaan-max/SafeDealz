// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'vendor_wallet.dart';

part 'wallet_list_response.freezed.dart';
part 'wallet_list_response.g.dart';

@Freezed()
abstract class WalletListResponse with _$WalletListResponse {
  const factory WalletListResponse({
    required bool success,
    required List<VendorWallet> data,
  }) = _WalletListResponse;
  
  factory WalletListResponse.fromJson(Map<String, Object?> json) => _$WalletListResponseFromJson(json);
}
