// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@Freezed()
abstract class Branch with _$Branch {
  const factory Branch({
    required String id,
    required String chainId,
    required String name,
    required String code,
    required bool active,
    String? address,
    String? city,
    String? contactName,
    String? contactPhone,
    String? beneficiaryName,
    String? ifsc,
    String? accountNumberMasked,
    String? accountNumber,
    bool? payoutReady,
  }) = _Branch;
  
  factory Branch.fromJson(Map<String, Object?> json) => _$BranchFromJson(json);
}
