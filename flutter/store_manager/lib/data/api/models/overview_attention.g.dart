// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_attention.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OverviewAttention _$OverviewAttentionFromJson(Map<String, dynamic> json) =>
    _OverviewAttention(
      kind: json['kind'] == null
          ? null
          : OverviewAttentionKind.fromJson(json['kind'] as String),
      id: json['id'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$OverviewAttentionToJson(_OverviewAttention instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'id': instance.id,
      'label': instance.label,
    };
