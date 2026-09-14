// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletDetailResponseImpl _$$WalletDetailResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WalletDetailResponseImpl(
  success: json['success'] as bool,
  data: WalletDetail.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$WalletDetailResponseImplToJson(
  _$WalletDetailResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
