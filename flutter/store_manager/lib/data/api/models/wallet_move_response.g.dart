// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_move_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletMoveResponseImpl _$$WalletMoveResponseImplFromJson(
  Map<String, dynamic> json,
) => _$WalletMoveResponseImpl(
  success: json['success'] as bool,
  data: Data2.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$WalletMoveResponseImplToJson(
  _$WalletMoveResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
