// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'chain.dart';

part 'chain_list_response.freezed.dart';
part 'chain_list_response.g.dart';

@Freezed()
abstract class ChainListResponse with _$ChainListResponse {
  const factory ChainListResponse({
    required bool success,
    required List<Chain> data,
  }) = _ChainListResponse;
  
  factory ChainListResponse.fromJson(Map<String, Object?> json) => _$ChainListResponseFromJson(json);
}
