// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InspectionWriteImpl _$$InspectionWriteImplFromJson(
  Map<String, dynamic> json,
) => _$InspectionWriteImpl(
  answers: (json['answers'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  complete: json['complete'] as bool?,
);

Map<String, dynamic> _$$InspectionWriteImplToJson(
  _$InspectionWriteImpl instance,
) => <String, dynamic>{
  'answers': instance.answers,
  'complete': instance.complete,
};
