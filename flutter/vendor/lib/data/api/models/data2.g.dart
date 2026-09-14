// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data2Impl _$$Data2ImplFromJson(Map<String, dynamic> json) => _$Data2Impl(
  availablePaise: (json['availablePaise'] as num?)?.toInt(),
  reservedPaise: (json['reservedPaise'] as num?)?.toInt(),
  processingPaise: (json['processingPaise'] as num?)?.toInt(),
  replayed: json['replayed'] as bool?,
  reservationId: json['reservationId'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$$Data2ImplToJson(_$Data2Impl instance) =>
    <String, dynamic>{
      'availablePaise': instance.availablePaise,
      'reservedPaise': instance.reservedPaise,
      'processingPaise': instance.processingPaise,
      'replayed': instance.replayed,
      'reservationId': instance.reservationId,
      'status': instance.status,
    };
