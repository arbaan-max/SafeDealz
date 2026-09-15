// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_create.freezed.dart';
part 'branch_create.g.dart';

@Freezed()
abstract class BranchCreate with _$BranchCreate {
  const factory BranchCreate({
    required String chainId,
    required String name,
    required String code,
    required String beneficiaryName,
    required String accountNumber,
    required String ifsc,
    String? address,
    String? city,
    String? contactName,
    String? contactPhone,
    bool? active,
  }) = _BranchCreate;
  
  factory BranchCreate.fromJson(Map<String, Object?> json) => _$BranchCreateFromJson(json);
}
