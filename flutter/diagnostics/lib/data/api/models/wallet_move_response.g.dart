// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_move_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletMoveResponse _$WalletMoveResponseFromJson(Map<String, dynamic> json) =>
    _WalletMoveResponse(
      success: json['success'] as bool,
      data: Data2.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletMoveResponseToJson(_WalletMoveResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
