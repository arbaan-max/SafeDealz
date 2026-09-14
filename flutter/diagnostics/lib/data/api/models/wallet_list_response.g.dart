// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletListResponseImpl _$$WalletListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WalletListResponseImpl(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => VendorWallet.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$WalletListResponseImplToJson(
  _$WalletListResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
