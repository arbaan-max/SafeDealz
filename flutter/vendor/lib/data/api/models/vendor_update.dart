// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_update.freezed.dart';
part 'vendor_update.g.dart';

@Freezed()
abstract class VendorUpdate with _$VendorUpdate {
  const factory VendorUpdate({
    String? displayName,
    String? phone,
    String? password,
    List<String>? assignedBranchIds,
    bool? active,
  }) = _VendorUpdate;
  
  factory VendorUpdate.fromJson(Map<String, Object?> json) => _$VendorUpdateFromJson(json);
}
