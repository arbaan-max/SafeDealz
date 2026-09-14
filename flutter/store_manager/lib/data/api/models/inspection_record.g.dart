// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InspectionRecordImpl _$$InspectionRecordImplFromJson(
  Map<String, dynamic> json,
) => _$InspectionRecordImpl(
  answers: (json['answers'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  source: json['source'] as String?,
  complete: json['complete'] as bool?,
  billRequired: json['billRequired'] as bool?,
);

Map<String, dynamic> _$$InspectionRecordImplToJson(
  _$InspectionRecordImpl instance,
) => <String, dynamic>{
  'answers': instance.answers,
  'source': instance.source,
  'complete': instance.complete,
  'billRequired': instance.billRequired,
};
