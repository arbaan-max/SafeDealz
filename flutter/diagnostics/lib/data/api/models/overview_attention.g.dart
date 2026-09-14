// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_attention.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverviewAttentionImpl _$$OverviewAttentionImplFromJson(
  Map<String, dynamic> json,
) => _$OverviewAttentionImpl(
  kind: json['kind'] == null
      ? null
      : OverviewAttentionKind.fromJson(json['kind'] as String),
  id: json['id'] as String?,
  label: json['label'] as String?,
);

Map<String, dynamic> _$$OverviewAttentionImplToJson(
  _$OverviewAttentionImpl instance,
) => <String, dynamic>{
  'kind': instance.kind,
  'id': instance.id,
  'label': instance.label,
};
