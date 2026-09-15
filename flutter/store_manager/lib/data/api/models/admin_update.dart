// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_update.freezed.dart';
part 'admin_update.g.dart';

@Freezed()
abstract class AdminUpdate with _$AdminUpdate {
  const factory AdminUpdate({
    String? displayName,
    String? phone,
    String? password,
    bool? active,
    List<String>? assignedBranchIds,
  }) = _AdminUpdate;
  
  factory AdminUpdate.fromJson(Map<String, Object?> json) => _$AdminUpdateFromJson(json);
}
