// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InspectionWrite _$InspectionWriteFromJson(Map<String, dynamic> json) =>
    _InspectionWrite(
      answers: (json['answers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      complete: json['complete'] as bool?,
    );

Map<String, dynamic> _$InspectionWriteToJson(_InspectionWrite instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'complete': instance.complete,
    };
