// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_role.dart';
import 'vendor_wallet.dart';

part 'vendor_account.freezed.dart';
part 'vendor_account.g.dart';

@Freezed()
abstract class VendorAccount with _$VendorAccount {
  const factory VendorAccount({
    required String id,
    required String email,
    required AccountRole role,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    VendorWallet? wallet,
  }) = _VendorAccount;
  
  factory VendorAccount.fromJson(Map<String, Object?> json) => _$VendorAccountFromJson(json);
}
