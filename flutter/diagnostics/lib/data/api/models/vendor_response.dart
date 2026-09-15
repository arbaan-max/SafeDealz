// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'vendor_account.dart';

part 'vendor_response.freezed.dart';
part 'vendor_response.g.dart';

@Freezed()
abstract class VendorResponse with _$VendorResponse {
  const factory VendorResponse({
    required bool success,
    required VendorAccount data,
  }) = _VendorResponse;
  
  factory VendorResponse.fromJson(Map<String, Object?> json) => _$VendorResponseFromJson(json);
}
