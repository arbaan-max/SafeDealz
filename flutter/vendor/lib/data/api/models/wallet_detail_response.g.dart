// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletDetailResponse _$WalletDetailResponseFromJson(
  Map<String, dynamic> json,
) => _WalletDetailResponse(
  success: json['success'] as bool,
  data: WalletDetail.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WalletDetailResponseToJson(
  _WalletDetailResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
