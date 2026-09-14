// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reward_policy.dart';

part 'data4.freezed.dart';
part 'data4.g.dart';

@Freezed()
class Data4 with _$Data4 {
  const factory Data4({
    RewardPolicy? current,
    List<RewardPolicy>? versions,
  }) = _Data4;
  
  factory Data4.fromJson(Map<String, Object?> json) => _$Data4FromJson(json);
}
