// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_role.dart';

part 'admin_account.freezed.dart';
part 'admin_account.g.dart';

@Freezed()
class AdminAccount with _$AdminAccount {
  const factory AdminAccount({
    required String id,
    required String email,
    required AccountRole role,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
  }) = _AdminAccount;
  
  factory AdminAccount.fromJson(Map<String, Object?> json) => _$AdminAccountFromJson(json);
}
