// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'vendor_account.dart';

part 'vendor_list_response.freezed.dart';
part 'vendor_list_response.g.dart';

@Freezed()
class VendorListResponse with _$VendorListResponse {
  const factory VendorListResponse({
    required bool success,
    required List<VendorAccount> data,
  }) = _VendorListResponse;
  
  factory VendorListResponse.fromJson(Map<String, Object?> json) => _$VendorListResponseFromJson(json);
}
