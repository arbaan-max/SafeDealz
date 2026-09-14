// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet_detail.dart';

part 'wallet_detail_response.freezed.dart';
part 'wallet_detail_response.g.dart';

@Freezed()
class WalletDetailResponse with _$WalletDetailResponse {
  const factory WalletDetailResponse({
    required bool success,
    required WalletDetail data,
  }) = _WalletDetailResponse;
  
  factory WalletDetailResponse.fromJson(Map<String, Object?> json) => _$WalletDetailResponseFromJson(json);
}
