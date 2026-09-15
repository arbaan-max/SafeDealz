// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'manager_update.freezed.dart';
part 'manager_update.g.dart';

@Freezed()
abstract class ManagerUpdate with _$ManagerUpdate {
  const factory ManagerUpdate({
    String? displayName,
    String? phone,
    String? password,
    String? branchId,
    bool? active,
    bool? revokeSessions,
  }) = _ManagerUpdate;
  
  factory ManagerUpdate.fromJson(Map<String, Object?> json) => _$ManagerUpdateFromJson(json);
}
