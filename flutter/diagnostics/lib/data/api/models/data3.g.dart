// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data3 _$Data3FromJson(Map<String, dynamic> json) => _Data3(
  previous: AuctionRound.fromJson(json['previous'] as Map<String, dynamic>),
  next: AuctionRound.fromJson(json['next'] as Map<String, dynamic>),
);

Map<String, dynamic> _$Data3ToJson(_Data3 instance) => <String, dynamic>{
  'previous': instance.previous,
  'next': instance.next,
};
