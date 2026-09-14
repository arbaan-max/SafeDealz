// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signed_url.freezed.dart';
part 'signed_url.g.dart';

@Freezed()
class SignedUrl with _$SignedUrl {
  const factory SignedUrl({
    String? method,
    String? url,
    String? expiresAt,
    bool? live,
  }) = _SignedUrl;
  
  factory SignedUrl.fromJson(Map<String, Object?> json) => _$SignedUrlFromJson(json);
}
