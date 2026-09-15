// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentInstruction _$PaymentInstructionFromJson(Map<String, dynamic> json) =>
    _PaymentInstruction(
      id: json['id'] as String?,
      dealId: json['dealId'] as String?,
      branchId: json['branchId'] as String?,
      status: json['status'] == null
          ? null
          : PaymentInstructionStatus.fromJson(json['status'] as String),
      amountPaise: (json['amountPaise'] as num?)?.toInt(),
      feePaise: (json['feePaise'] as num?)?.toInt(),
      beneficiaryName: json['beneficiaryName'] as String?,
      accountNumberMasked: json['accountNumberMasked'] as String?,
      ifsc: json['ifsc'] as String?,
      providerTransferId: json['providerTransferId'] as String?,
      providerStatus: json['providerStatus'] as String?,
      attempts: (json['attempts'] as List<dynamic>?)
          ?.map((e) => PaymentAttempt.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentInstructionToJson(_PaymentInstruction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dealId': instance.dealId,
      'branchId': instance.branchId,
      'status': instance.status,
      'amountPaise': instance.amountPaise,
      'feePaise': instance.feePaise,
      'beneficiaryName': instance.beneficiaryName,
      'accountNumberMasked': instance.accountNumberMasked,
      'ifsc': instance.ifsc,
      'providerTransferId': instance.providerTransferId,
      'providerStatus': instance.providerStatus,
      'attempts': instance.attempts,
    };
