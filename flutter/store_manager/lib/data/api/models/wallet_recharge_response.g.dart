// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_recharge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletRechargeResponseImpl _$$WalletRechargeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WalletRechargeResponseImpl(
  success: json['success'] as bool,
  data: WalletRecharge.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$WalletRechargeResponseImplToJson(
  _$WalletRechargeResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
