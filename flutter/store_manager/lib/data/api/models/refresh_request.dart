// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'client_type.dart';

part 'refresh_request.freezed.dart';
part 'refresh_request.g.dart';

@Freezed()
abstract class RefreshRequest with _$RefreshRequest {
  const factory RefreshRequest({
    required ClientType clientType,
    String? refreshToken,
  }) = _RefreshRequest;
  
  factory RefreshRequest.fromJson(Map<String, Object?> json) => _$RefreshRequestFromJson(json);
}
