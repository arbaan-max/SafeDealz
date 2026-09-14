// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_create.freezed.dart';
part 'admin_create.g.dart';

@Freezed()
class AdminCreate with _$AdminCreate {
  const factory AdminCreate({
    required String displayName,
    required String email,
    required String password,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
  }) = _AdminCreate;
  
  factory AdminCreate.fromJson(Map<String, Object?> json) => _$AdminCreateFromJson(json);
}
