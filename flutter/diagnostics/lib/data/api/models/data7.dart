// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'signed_url.dart';

part 'data7.freezed.dart';
part 'data7.g.dart';

@Freezed()
class Data7 with _$Data7 {
  const factory Data7({
    String? mediaId,
    String? objectKey,
    SignedUrl? upload,
  }) = _Data7;
  
  factory Data7.fromJson(Map<String, Object?> json) => _$Data7FromJson(json);
}
