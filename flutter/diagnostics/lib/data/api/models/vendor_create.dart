// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_create.freezed.dart';
part 'vendor_create.g.dart';

@Freezed()
abstract class VendorCreate with _$VendorCreate {
  const factory VendorCreate({
    required String displayName,
    required String email,
    required String password,
    required List<String> assignedBranchIds,
    String? phone,
    bool? active,
  }) = _VendorCreate;
  
  factory VendorCreate.fromJson(Map<String, Object?> json) => _$VendorCreateFromJson(json);
}
