// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Data2 _$Data2FromJson(Map<String, dynamic> json) => _Data2(
  availablePaise: (json['availablePaise'] as num?)?.toInt(),
  reservedPaise: (json['reservedPaise'] as num?)?.toInt(),
  processingPaise: (json['processingPaise'] as num?)?.toInt(),
  replayed: json['replayed'] as bool?,
  reservationId: json['reservationId'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$Data2ToJson(_Data2 instance) => <String, dynamic>{
  'availablePaise': instance.availablePaise,
  'reservedPaise': instance.reservedPaise,
  'processingPaise': instance.processingPaise,
  'replayed': instance.replayed,
  'reservationId': instance.reservationId,
  'status': instance.status,
};
