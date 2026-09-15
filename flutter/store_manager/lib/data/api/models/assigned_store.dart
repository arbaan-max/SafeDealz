// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'assigned_store.freezed.dart';
part 'assigned_store.g.dart';

@Freezed()
abstract class AssignedStore with _$AssignedStore {
  const factory AssignedStore({
    required String id,
    required String chainId,
    required String name,
    required String code,
    required String chainName,
    String? address,
    String? city,
    String? contactName,
    String? contactPhone,
    bool? active,
    String? chainCode,
  }) = _AssignedStore;
  
  factory AssignedStore.fromJson(Map<String, Object?> json) => _$AssignedStoreFromJson(json);
}
