// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_role.dart';

part 'manager_account.freezed.dart';
part 'manager_account.g.dart';

@Freezed()
abstract class ManagerAccount with _$ManagerAccount {
  const factory ManagerAccount({
    required String id,
    required String email,
    required AccountRole role,
    required String branchId,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    int? activeSessionCount,
  }) = _ManagerAccount;
  
  factory ManagerAccount.fromJson(Map<String, Object?> json) => _$ManagerAccountFromJson(json);
}
