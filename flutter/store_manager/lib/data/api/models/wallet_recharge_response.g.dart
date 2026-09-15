// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_recharge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletRechargeResponse _$WalletRechargeResponseFromJson(
  Map<String, dynamic> json,
) => _WalletRechargeResponse(
  success: json['success'] as bool,
  data: WalletRecharge.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WalletRechargeResponseToJson(
  _WalletRechargeResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
