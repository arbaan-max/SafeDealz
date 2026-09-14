// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data4.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data4Impl _$$Data4ImplFromJson(Map<String, dynamic> json) => _$Data4Impl(
  current: json['current'] == null
      ? null
      : RewardPolicy.fromJson(json['current'] as Map<String, dynamic>),
  versions: (json['versions'] as List<dynamic>?)
      ?.map((e) => RewardPolicy.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$Data4ImplToJson(_$Data4Impl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'versions': instance.versions,
    };
