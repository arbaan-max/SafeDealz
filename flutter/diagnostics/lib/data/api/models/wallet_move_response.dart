// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data2.dart';

part 'wallet_move_response.freezed.dart';
part 'wallet_move_response.g.dart';

@Freezed()
class WalletMoveResponse with _$WalletMoveResponse {
  const factory WalletMoveResponse({
    required bool success,
    required Data2 data,
  }) = _WalletMoveResponse;
  
  factory WalletMoveResponse.fromJson(Map<String, Object?> json) => _$WalletMoveResponseFromJson(json);
}
