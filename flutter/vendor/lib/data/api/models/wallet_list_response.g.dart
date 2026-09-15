// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletListResponse _$WalletListResponseFromJson(Map<String, dynamic> json) =>
    _WalletListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => VendorWallet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WalletListResponseToJson(_WalletListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
