// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_release_write.freezed.dart';
part 'wallet_release_write.g.dart';

@Freezed()
abstract class WalletReleaseWrite with _$WalletReleaseWrite {
  const factory WalletReleaseWrite({
    required String idempotencyKey,
  }) = _WalletReleaseWrite;
  
  factory WalletReleaseWrite.fromJson(Map<String, Object?> json) => _$WalletReleaseWriteFromJson(json);
}
