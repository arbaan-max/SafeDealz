// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_update.freezed.dart';
part 'branch_update.g.dart';

@Freezed()
class BranchUpdate with _$BranchUpdate {
  const factory BranchUpdate({
    String? name,
    String? code,
    String? address,
    String? city,
    String? contactName,
    String? contactPhone,
    String? beneficiaryName,
    String? accountNumber,
    String? ifsc,
    String? currentPassword,
    bool? active,
  }) = _BranchUpdate;
  
  factory BranchUpdate.fromJson(Map<String, Object?> json) => _$BranchUpdateFromJson(json);
}
