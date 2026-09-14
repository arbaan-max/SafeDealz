// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_attempt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentAttemptImpl _$$PaymentAttemptImplFromJson(Map<String, dynamic> json) =>
    _$PaymentAttemptImpl(
      at: json['at'] == null ? null : DateTime.parse(json['at'] as String),
      event: json['event'] as String?,
      status: json['status'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$PaymentAttemptImplToJson(
  _$PaymentAttemptImpl instance,
) => <String, dynamic>{
  'at': instance.at?.toIso8601String(),
  'event': instance.event,
  'status': instance.status,
  'note': instance.note,
};
