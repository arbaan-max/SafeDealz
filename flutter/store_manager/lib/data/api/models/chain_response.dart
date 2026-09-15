// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'chain.dart';

part 'chain_response.freezed.dart';
part 'chain_response.g.dart';

@Freezed()
abstract class ChainResponse with _$ChainResponse {
  const factory ChainResponse({
    required bool success,
    required Chain data,
  }) = _ChainResponse;
  
  factory ChainResponse.fromJson(Map<String, Object?> json) => _$ChainResponseFromJson(json);
}
