// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'manager_create.freezed.dart';
part 'manager_create.g.dart';

@Freezed()
class ManagerCreate with _$ManagerCreate {
  const factory ManagerCreate({
    required String displayName,
    required String email,
    required String password,
    required String branchId,
    String? phone,
    bool? active,
  }) = _ManagerCreate;
  
  factory ManagerCreate.fromJson(Map<String, Object?> json) => _$ManagerCreateFromJson(json);
}
