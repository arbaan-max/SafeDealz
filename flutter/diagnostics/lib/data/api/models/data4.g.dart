// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data4.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data4 _$Data4FromJson(Map<String, dynamic> json) => _Data4(
  current: json['current'] == null
      ? null
      : RewardPolicy.fromJson(json['current'] as Map<String, dynamic>),
  versions: (json['versions'] as List<dynamic>?)
      ?.map((e) => RewardPolicy.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$Data4ToJson(_Data4 instance) => <String, dynamic>{
  'current': instance.current,
  'versions': instance.versions,
};
