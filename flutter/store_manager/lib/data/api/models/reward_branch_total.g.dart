// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_branch_total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardBranchTotal _$RewardBranchTotalFromJson(Map<String, dynamic> json) =>
    _RewardBranchTotal(
      branchId: json['branchId'] as String?,
      branchName: json['branchName'] as String?,
      issuedPoints: (json['issuedPoints'] as num?)?.toInt(),
      redeemedPoints: (json['redeemedPoints'] as num?)?.toInt(),
      outstandingPoints: (json['outstandingPoints'] as num?)?.toInt(),
      issuedValuePaise: (json['issuedValuePaise'] as num?)?.toInt(),
      redeemedValuePaise: (json['redeemedValuePaise'] as num?)?.toInt(),
      outstandingValuePaise: (json['outstandingValuePaise'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RewardBranchTotalToJson(_RewardBranchTotal instance) =>
    <String, dynamic>{
      'branchId': instance.branchId,
      'branchName': instance.branchName,
      'issuedPoints': instance.issuedPoints,
      'redeemedPoints': instance.redeemedPoints,
      'outstandingPoints': instance.outstandingPoints,
      'issuedValuePaise': instance.issuedValuePaise,
      'redeemedValuePaise': instance.redeemedValuePaise,
      'outstandingValuePaise': instance.outstandingValuePaise,
    };
