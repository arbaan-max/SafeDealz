// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_link.freezed.dart';
part 'vendor_link.g.dart';

@Freezed()
class VendorLink with _$VendorLink {
  const factory VendorLink({
    required String email,
    required List<String> assignedBranchIds,
  }) = _VendorLink;
  
  factory VendorLink.fromJson(Map<String, Object?> json) => _$VendorLinkFromJson(json);
}
